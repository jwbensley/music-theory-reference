from app.sounds import (
    Chords,
    Keys,
    Intervals,
    Scales,
)
import os

LISTEN_PORT = os.getenv("LISTEN_PORT", "8404")
BINDING_ADDRESS = os.getenv("BINDING_ADDRESS", "127.0.0.1")
PUBLIC_URL = os.getenv("PUBLIC_URL", f"http://{BINDING_ADDRESS}:{LISTEN_PORT}")

post_url = f"{PUBLIC_URL}/download"

form_html = f"""
<!doctype html>
  <html>
    <head>
      <meta charset="utf-8">
      <title>Ear Training</title>
      <style>
        * {{
          box-sizing: border-box;
          margin: 0;
          padding: 0;
        }}
        
        body {{
          font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
          background-color: #f5f5f5;
          padding: 20px;
          line-height: 1.6;
        }}
        
        h1 {{
          color: #333;
          margin-bottom: 30px;
          text-align: center;
          font-size: 2em;
        }}
        
        form {{
          max-width: 600px;
          margin: 0 auto;
          background: white;
          padding: 30px;
          border-radius: 8px;
          box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }}
        
        form > div {{
          margin-bottom: 20px;
        }}
        
        label {{
          display: block;
          margin-bottom: 8px;
          color: #555;
          font-weight: 500;
          font-size: 0.95em;
        }}
        
        input[type="number"],
        select {{
          width: 100%;
          padding: 10px;
          border: 1px solid #ddd;
          border-radius: 4px;
          font-size: 1em;
          transition: border-color 0.3s;
        }}
        
        input[type="number"]:focus,
        select:focus {{
          outline: none;
          border-color: #4CAF50;
        }}
        
        select[multiple] {{
          min-height: 150px;
          padding: 5px;
        }}
        
        select[multiple] option {{
          padding: 8px;
          border-radius: 3px;
          margin: 2px 0;
        }}
        
        select[multiple] option:hover {{
          background-color: #e8f5e9;
        }}
        
        button[type="submit"] {{
          width: 100%;
          padding: 12px 20px;
          background-color: #4CAF50;
          color: white;
          border: none;
          border-radius: 4px;
          font-size: 1.1em;
          font-weight: 500;
          cursor: pointer;
          transition: background-color 0.3s;
        }}
        
        button[type="submit"]:hover {{
          background-color: #45a049;
        }}
        
        button[type="submit"]:active {{
          background-color: #3d8b40;
        }}
        
        .multi-select-group {{
          background-color: #fafafa;
          padding: 15px;
          border-radius: 4px;
          border: 1px solid #e0e0e0;
        }}
      </style>
    </head>
    <body>
      <h1>Download Sounds</h1>
      <form id="exercise_form">
        <input type="hidden" name="exercise_type" id="exercise_type" value=""/>
        <div>
            <label for="repetitions">Repetitions:</label>
            <input type="number" name="repetitions" id="repetitions" value="3"/>
        </div>
        <div>
            <label for="octave">Octave:</label>
            <input type="number" name="octave" id="octave" value="4"/>
        </div>
        <div>
            <label for="key">Key:</label>
            <select name="key" id="key">
              <option></option>
"""
for key in Keys:
    form_html += f'            <option value="{key.value.get_name()}">{key.value.get_display_name()}</option>\n'
form_html += """         </select>
        </div>
        <div>
            <label for="chords_choices">Chord Type:</label>
            <select name="chords_choices" id="chords_choices" multiple data-exercise-type="chords">
"""
for chord in Chords:
    form_html += f'            <option value="{chord.value.get_name()}">{chord.value.get_display_name()}</option>\n'
form_html += """         </select>
        </div>
        <div>
            <label for="intervals_choices">Interval Type:</label>
            <select name="intervals_choices" id="intervals_choices" multiple data-exercise-type="intervals">
"""
for interval in Intervals:
    form_html += f'            <option value="{interval.value.get_name()}">{interval.value.get_display_name()}</option>\n'
form_html += """         </select>
        </div>
        <div>
            <label for="scales_choices">Scale Type:</label>
            <select name="scales_choices" id="scales_choices" multiple data-exercise-type="scales">
"""
for scale in Scales:
    form_html += f'            <option value="{scale.value.get_name()}">{scale.value.get_display_name()}</option>\n'
form_html += (
    """         </select>
        </div>
        <div>
          <button type="submit">Submit</button>
        </div>
      </form>
      <script>
        const form = document.getElementById('exercise_form');
        const exerciseTypeInput = document.getElementById('exercise_type');
        const multiSelects = form.querySelectorAll('select[multiple]');
        
        // When user selects from one multi-select, clear others and set exercise_type
        multiSelects.forEach(select => {
          select.addEventListener('change', function() {
            if (this.selectedOptions.length > 0) {
              // Clear other selects
              multiSelects.forEach(otherSelect => {
                if (otherSelect !== this) {
                  Array.from(otherSelect.options).forEach(opt => opt.selected = false);
                }
              });
              // Set exercise_type based on which select was used
              exerciseTypeInput.value = this.dataset.exerciseType;
            }
          });
        });

        form.addEventListener('submit', async function (e) {
          e.preventDefault();
          const fd = new FormData(form);
          const data = {};
          
          // Find which multi-select has selections
          let activeSelect = null;
          multiSelects.forEach(select => {
            if (select.selectedOptions.length > 0) {
              activeSelect = select;
            }
          });
          
          if (!activeSelect) {
            alert('Please select at least one option from Chords, Intervals, or Scales');
            return;
          }
          
          for (const key of fd.keys()) {
            const values = fd.getAll(key);
            const el = form.querySelector(`[name="${key}"]`);
            const isSelect = el && el.tagName === 'SELECT';
            const isMultipleSelect = isSelect && el.multiple === true;
            
            if (isMultipleSelect) {
              // Only include the active multi-select, rename it to exercise_choices
              if (el === activeSelect) {
                data['exercise_choices'] = values;
              }
            } else {
              let value = values[0];
              if (value === '') {
                value = null;
              }
              data[key] = value;
            }
          }
          
          const response = await fetch('"""
    + post_url
    + """', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(data)
          });

          if (!response.ok) {
            try {
              const err = await response.json();
              alert(err.message || JSON.stringify(err));
            } catch {
              alert(await response.text());
            }
            return;
          }

          const blob = await response.blob();
          const disposition = response.headers.get('Content-Disposition') || response.headers.get('content-disposition');
          let filename = 'download';
          if (disposition) {
            const fnMatch = disposition.match(/filename\\*=UTF-8''([^;]+)|filename=\"?([^\";]+)\"?/);
            if (fnMatch) filename = decodeURIComponent(fnMatch[1] || fnMatch[2]);
          }

          const url = URL.createObjectURL(blob);
          const a = document.createElement('a');
          a.href = url;
          a.download = filename;
          document.body.appendChild(a);
          a.click();
          a.remove();
          URL.revokeObjectURL(url);
        });
      </script>
    </body>
  </html>
"""
)
