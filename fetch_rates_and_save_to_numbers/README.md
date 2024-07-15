
## Preparation
> IMPORTANT!
> 
> Before running the script, the table must already exist in Numbers.

Install script:
```shell
git clone https://github.com/artsmolin/applescripts.git

cp applescripts/fetch_rates_and_save_to_numbers/fetch_rates.scpt ~/Library/Scripts/Applications/Numbers
```

Set your values in the "CONFIG" block in the `fetch_rates.scpt` file:
```shell
nano ~/Library/Scripts/Applications/Numbers/fetch_rates.scpt
````

---

## Running via terminal
```shell
osascript ~/Library/Scripts/Applications/Numbers/fetch_rates.scpt
```

---

## Running via UI
Add AppleScript menu to Menu bar:
   - Opened AppleScript Editor.
   - Went AppleScript Editor > Preferences.
   - Checked "show Script menu in Menu bar"
   - Closed preferences.

<img src="/docs/img/applescript_in_menu_bar.png" width="300"/>

Move `fetch_rates.scpt` to `~/Library/Scripts/Applications/Numbers`.

Open `Numbers` and run script from AppleScript.

<img src="/docs/img/run_script.png" width="300"/>

Done!

<img src="/docs/img/done.png" width="400"/>
