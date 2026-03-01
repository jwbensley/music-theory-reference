from app.sounds import (
    Chords,
    Keys,
    Intervals,
    Scales,
)

form_html = f"""
<!doctype html>
  <html>
    <head>
      <meta charset="utf-8">
      <title>Download Sounds</title>
    </head>
    <body>
      <h1>Download Sounds</h1>
      <h3>Chords</h3>
      <form id="chords_form">
        <input type="hidden" name="sound_type" value="chords"/>
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
            <label for="sound_type_choices">Chord Type:</label>
            <select name="sound_type_choices" id="sound_type_choices" multiple>
"""
for chord in Chords:
    form_html += f'            <option value="{chord.value.get_name()}">{chord.value.get_display_name()}</option>\n'
form_html += """         </select>
        </div>
        <button type="submit">Submit</button>
      </form>
      <hr/>
      <h3>Intervals</h3>
      <form id="intervals_form">
        <input type="hidden" name="sound_type" value="intervals"/>
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
            <label for="sound_type_choices">Interval Type:</label>
            <select name="sound_type_choices" id="sound_type_choices" multiple>
"""
for interval in Intervals:
    form_html += f'            <option value="{interval.value.get_name()}">{interval.value.get_display_name()}</option>\n'
form_html += """         </select>
        </div>
        <button type="submit">Submit</button>
      </form>
      <hr/>
      <h3>Scales</h3>
      <form id="scales_form">
        <input type="hidden" name="sound_type" value="scales"/>
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
           <label for="sound_type_choices">Scale Type:</label>
           <select name="sound_type_choices" id="sound_type_choices" multiple>
"""
for scale in Scales:
    form_html += f'            <option value="{scale.value.get_name()}">{scale.value.get_display_name()}</option>\n'
form_html += """         </select>
        </div>
        <button type="submit">Submit</button>
      </form>
      <script>
        // Helper to submit a form, sending repeated keys as arrays
        function attachJsonSubmit(formId) {
          const form = document.getElementById(formId);
          form.addEventListener('submit', async function (e) {
            e.preventDefault();
            const fd = new FormData(form);
            const data = {};
            for (const key of fd.keys()) {
              const values = fd.getAll(key);
              // detect the form control for this name; if it's a SELECT, check if it supports multiple
              const el = form.querySelector(`[name="${key}"]`);
              const isSelect = el && el.tagName === 'SELECT';
              const isMultipleSelect = isSelect && el.multiple === true;
              if (isMultipleSelect) {
                // always send multiple select values as an array of strings;
                data[key] = values;
              } else {
                value = values[0];
                if (value === '') {
                  value = null;
                }
                data[key] = value;
              }
            }
            const response = await fetch('http://127.0.0.1:8000/download', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              body: JSON.stringify(data)
            });
            const result = await response.json();
            console.log(result);
          });
        }

        attachJsonSubmit('chords_form');
        attachJsonSubmit('intervals_form');
        attachJsonSubmit('scales_form');
      </script>
    </body>
  </html>
"""
