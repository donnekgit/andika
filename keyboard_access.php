<div id="access" class="tab-content">

<p>
The Swahili keyboard layout is already available in Ubuntu, but it needs to be updated (because the existing one is based on initial work I did some time ago), and then activated.
</p>

<h6>Update the keyboard layout</h6>

<p>
Download this revised <a href="./layout/tz">Swahili keyboard layout</a>.
</p>

<p>
Navigate to where you saved it, and then open a terminal and type:<br />
<strong>sudo cp tz /usr/share/X11/xkb/symbols/</strong>
</p>

<h6>Activate the keyboard layout</h6>

<p>
Click on <em>K → Settings → System Settings</em>:
<img class="caption" src="./howto/menu.png" width="588" height="381" />
</p>

<p>
In the settings dialogues, click on <em>Input Devices → Keyboard</em>:
<img class="caption" src="./howto/settings.png" width="730" height="384" />
</p>

<p>
On the <em>Layout</em>s tab, tick C<em>onfigure layouts</em>, and then click <em>Add</em>:
<img class="caption" src="./howto/layout1.png" width="807" height="529" />
</p>

<p>
Fill in the pop-up dialogue as shown, and then click <em>OK</em>:
<img class="caption" src="./howto/layout2.png" width="531" height="296" />
It should also be possible in the future to access the layout from Swahili (Kenya) too.
</p>

<p>
Once the new layout is showing in the dialogue, click <em>Apply</em> to exit:
<img class="caption" src="./howto/layout3.png" width="813" height="540" />
</p>

<p>
You should now see an additional marker in the system tray at the bottom right of your screen:
<img class="caption" src="./howto/gb.png" width="107" height="29" />
This shows that the UK English keyboard is the one currently in operation.  Click on this, and it will change to:
<img class="caption" src="./howto/tz.png" width="107" height="26" />
showing that the Swahili keyboard is now operational.  You can also switch between the two keyboards by pressing<strong> Ctrl+Alt+k</strong>.
</p>

</div>