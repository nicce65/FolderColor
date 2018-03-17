[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$MainForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.TextBox]$alphaTextBox = $null
[System.Windows.Forms.TextBox]$redTextBox = $null
[System.Windows.Forms.TextBox]$greenTextBox = $null
[System.Windows.Forms.TextBox]$blueTextBox = $null
[System.Windows.Forms.Button]$Pickcolor = $null
[System.Windows.Forms.Button]$Exit = $null
[System.Windows.Forms.FolderBrowserDialog]$folderBrowserDialog = $null
[System.Windows.Forms.Label]$Alpha = $null
[System.Windows.Forms.Label]$Red = $null
[System.Windows.Forms.Label]$Green = $null
[System.Windows.Forms.Label]$Blue = $null
[System.Windows.Forms.TextBox]$HexBox = $null
[System.Windows.Forms.Label]$Hex = $null
[System.Windows.Forms.ColorDialog]$colorDialog = $null
[System.Windows.Forms.TextBox]$FolderBox = $null
[System.Windows.Forms.Button]$Folderbutton = $null
[System.Windows.Forms.Button]$Applybutton = $null
[System.Windows.Forms.Button]$ShowColorbutton = $null
[System.Windows.Forms.Label]$Result = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = Invoke-Expression (Get-Content "$PSScriptRoot\FolderColor.resources.psd1" -Raw)
$colorDialog = (New-Object -TypeName System.Windows.Forms.ColorDialog)
$alphaTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$redTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$greenTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$blueTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$Alpha = (New-Object -TypeName System.Windows.Forms.Label)
$Red = (New-Object -TypeName System.Windows.Forms.Label)
$Green = (New-Object -TypeName System.Windows.Forms.Label)
$Blue = (New-Object -TypeName System.Windows.Forms.Label)
$Pickcolor = (New-Object -TypeName System.Windows.Forms.Button)
$Exit = (New-Object -TypeName System.Windows.Forms.Button)
$folderBrowserDialog = (New-Object -TypeName System.Windows.Forms.FolderBrowserDialog)
$HexBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$Hex = (New-Object -TypeName System.Windows.Forms.Label)
$FolderBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$Folderbutton = (New-Object -TypeName System.Windows.Forms.Button)
$Applybutton = (New-Object -TypeName System.Windows.Forms.Button)
$ShowColorbutton = (New-Object -TypeName System.Windows.Forms.Button)
$Result = (New-Object -TypeName System.Windows.Forms.Label)
$MainForm.SuspendLayout()
#
#alphaTextBox
#
$alphaTextBox.BackColor = [System.Drawing.Color]::LightGray
$alphaTextBox.Enabled = $false
$alphaTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]84,[System.Int32]36))
$alphaTextBox.Name = [string]'alphaTextBox'
$alphaTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]70,[System.Int32]22))
$alphaTextBox.TabIndex = [System.Int32]0
#
#redTextBox
#
$redTextBox.BackColor = [System.Drawing.Color]::LightGray
$redTextBox.Enabled = $false
$redTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]84,[System.Int32]75))
$redTextBox.Name = [string]'redTextBox'
$redTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]70,[System.Int32]22))
$redTextBox.TabIndex = [System.Int32]1
#
#greenTextBox
#
$greenTextBox.BackColor = [System.Drawing.Color]::LightGray
$greenTextBox.Enabled = $false
$greenTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]84,[System.Int32]116))
$greenTextBox.Name = [string]'greenTextBox'
$greenTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]70,[System.Int32]22))
$greenTextBox.TabIndex = [System.Int32]2
#
#blueTextBox
#
$blueTextBox.BackColor = [System.Drawing.Color]::LightGray
$blueTextBox.Enabled = $false
$blueTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]84,[System.Int32]155))
$blueTextBox.Name = [string]'blueTextBox'
$blueTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]70,[System.Int32]22))
$blueTextBox.TabIndex = [System.Int32]3
#
#Alpha
#
$Alpha.AutoSize = $true
$Alpha.BackColor = [System.Drawing.Color]::Transparent
$Alpha.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]13,[System.Int32]41))
$Alpha.Name = [string]'Alpha'
$Alpha.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]44,[System.Int32]17))
$Alpha.TabIndex = [System.Int32]4
$Alpha.Text = [string]'Alpha'
$Alpha.add_Click($label1_Click)
#
#Red
#
$Red.AutoSize = $true
$Red.BackColor = [System.Drawing.Color]::Transparent
$Red.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]13,[System.Int32]80))
$Red.Name = [string]'Red'
$Red.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]34,[System.Int32]17))
$Red.TabIndex = [System.Int32]5
$Red.Text = [string]'Red'
#
#Green
#
$Green.AutoSize = $true
$Green.BackColor = [System.Drawing.Color]::Transparent
$Green.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]13,[System.Int32]121))
$Green.Name = [string]'Green'
$Green.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]48,[System.Int32]17))
$Green.TabIndex = [System.Int32]6
$Green.Text = [string]'Green'
#
#Blue
#
$Blue.AutoSize = $true
$Blue.BackColor = [System.Drawing.Color]::Transparent
$Blue.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]159))
$Blue.Name = [string]'Blue'
$Blue.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]36,[System.Int32]17))
$Blue.TabIndex = [System.Int32]7
$Blue.Text = [string]'Blue'
$Blue.add_Click($label4_Click)
#
#Pickcolor
#
$Pickcolor.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]182,[System.Int32]36))
$Pickcolor.Name = [string]'Pickcolor'
$Pickcolor.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]97,[System.Int32]33))
$Pickcolor.TabIndex = [System.Int32]9
$Pickcolor.Text = [string]'Pick Color'
$Pickcolor.UseVisualStyleBackColor = $true
$Pickcolor.add_Click($PickAColor)
#
#Exit
#
$Exit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]374,[System.Int32]286))
$Exit.Name = [string]'Exit'
$Exit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]97,[System.Int32]33))
$Exit.TabIndex = [System.Int32]10
$Exit.Text = [string]'Exit'
$Exit.UseVisualStyleBackColor = $true
$Exit.add_Click($Exit_Click)
#
#HexBox
#
$HexBox.BackColor = [System.Drawing.Color]::LightGray
$HexBox.Enabled = $false
$HexBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]84,[System.Int32]193))
$HexBox.Name = [string]'HexBox'
$HexBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]70,[System.Int32]22))
$HexBox.TabIndex = [System.Int32]11
#
#Hex
#
$Hex.AutoSize = $true
$Hex.BackColor = [System.Drawing.Color]::Transparent
$Hex.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]13,[System.Int32]198))
$Hex.Name = [string]'Hex'
$Hex.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]45,[System.Int32]17))
$Hex.TabIndex = [System.Int32]12
$Hex.Text = [string]'Name'
$Hex.add_Click($Hex_Click)
#
#FolderBox
#
$FolderBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]182,[System.Int32]130))
$FolderBox.Name = [string]'FolderBox'
$FolderBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]272,[System.Int32]22))
$FolderBox.TabIndex = [System.Int32]14
#
#Folderbutton
#
$Folderbutton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]182,[System.Int32]91))
$Folderbutton.Name = [string]'Folderbutton'
$Folderbutton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]97,[System.Int32]33))
$Folderbutton.TabIndex = [System.Int32]15
$Folderbutton.Text = [string]'Folder'
$Folderbutton.UseVisualStyleBackColor = $true
$Folderbutton.add_Click($Folderbutton_Click)
#
#Applybutton
#
$Applybutton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]259,[System.Int32]286))
$Applybutton.Name = [string]'Applybutton'
$Applybutton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]97,[System.Int32]33))
$Applybutton.TabIndex = [System.Int32]16
$Applybutton.Text = [string]'Apply'
$Applybutton.UseVisualStyleBackColor = $true
$Applybutton.add_Click($Applybutton_Click)
#
#ShowColorbutton
#
$ShowColorbutton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]236))
$ShowColorbutton.Name = [string]'ShowColorbutton'
$ShowColorbutton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]138,[System.Int32]83))
$ShowColorbutton.TabIndex = [System.Int32]17
$ShowColorbutton.UseVisualStyleBackColor = $true
#
#Result
#
$Result.AutoSize = $true
$Result.BackColor = [System.Drawing.Color]::Transparent
$Result.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]182,[System.Int32]223))
$Result.Name = [string]'Result'
$Result.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]0,[System.Int32]17))
$Result.TabIndex = [System.Int32]18
#
#MainForm
#
$MainForm.AccessibleName = [string]''
$MainForm.BackgroundImage = ([System.Drawing.Image]$resources.'$this.BackgroundImage')
$MainForm.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Stretch
$MainForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]490,[System.Int32]335))
$MainForm.Controls.Add($Result)
$MainForm.Controls.Add($ShowColorbutton)
$MainForm.Controls.Add($Applybutton)
$MainForm.Controls.Add($Folderbutton)
$MainForm.Controls.Add($FolderBox)
$MainForm.Controls.Add($Hex)
$MainForm.Controls.Add($HexBox)
$MainForm.Controls.Add($Exit)
$MainForm.Controls.Add($Pickcolor)
$MainForm.Controls.Add($Blue)
$MainForm.Controls.Add($Green)
$MainForm.Controls.Add($Red)
$MainForm.Controls.Add($Alpha)
$MainForm.Controls.Add($blueTextBox)
$MainForm.Controls.Add($greenTextBox)
$MainForm.Controls.Add($redTextBox)
$MainForm.Controls.Add($alphaTextBox)
$MainForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$MainForm.Name = [string]'MainForm'
$MainForm.Text = [string]'Folder color'
$MainForm.add_Load($MainForm_Load)
$MainForm.ResumeLayout($false)
$MainForm.PerformLayout()
Add-Member -InputObject $MainForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name alphaTextBox -Value $alphaTextBox -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name redTextBox -Value $redTextBox -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name greenTextBox -Value $greenTextBox -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name blueTextBox -Value $blueTextBox -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Pickcolor -Value $Pickcolor -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Exit -Value $Exit -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name folderBrowserDialog -Value $folderBrowserDialog -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Alpha -Value $Alpha -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Red -Value $Red -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Green -Value $Green -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Blue -Value $Blue -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name HexBox -Value $HexBox -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Hex -Value $Hex -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name colorDialog -Value $colorDialog -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name FolderBox -Value $FolderBox -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Folderbutton -Value $Folderbutton -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Applybutton -Value $Applybutton -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name ShowColorbutton -Value $ShowColorbutton -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Result -Value $Result -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
