set PATH=%PATH%;C:\Windows\Microsoft.NET\Framework\v4.0.30319
set VisualStudioVersion=11.0

if "%1"=="nobuild" (goto CREATE_FOLDER_STRUCTURE)

msbuild /verbosity:quiet /fl /t:Rebuild /p:Configuration=Release "..\WinRTXamlToolkit 8.0\WinRTXamlToolkit 8.0.csproj"
msbuild /verbosity:quiet /fl /t:Rebuild /p:Configuration=Release "..\WinRTXamlToolkit.Composition 8.0\WinRTXamlToolkit.Composition 8.0.csproj"
msbuild /verbosity:quiet /fl /t:Rebuild /p:Configuration=Release "..\WinRTXamlToolkit.Controls.Calendar 8.0\WinRTXamlToolkit.Controls.Calendar 8.0.csproj"
msbuild /verbosity:quiet /fl /t:Rebuild /p:Configuration=Release "..\WinRTXamlToolkit.Controls.Gauge 8.0\WinRTXamlToolkit.Controls.Gauge 8.0.csproj"
msbuild /verbosity:quiet /fl /t:Rebuild /p:Configuration=Release "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\WinRTXamlToolkit.Controls.DataVisualization 8.0.csproj"
msbuild /verbosity:quiet /fl /t:Rebuild /p:Configuration=Release "..\WinRTXamlToolkit.Sample 8.0\WinRTXamlToolkit.Sample 8.0.csproj"
msbuild /verbosity:quiet /fl /t:Rebuild /p:Configuration=Debug "..\WinRTXamlToolkit.Debugging 8.0\WinRTXamlToolkit.Debugging 8.0.csproj"

:CREATE_FOLDER_STRUCTURE
@rem Base folder structure
mkdir lib
mkdir lib\netcore45
mkdir tools
mkdir content
mkdir content\controllers

@rem WinRTXamlToolkit folders
mkdir "lib\netcore45\WinRTXamlToolkit\Controls"
mkdir "lib\netcore45\WinRTXamlToolkit\Controls\AlternativeFrame"
mkdir "lib\netcore45\WinRTXamlToolkit\Controls\CameraCaptureControl"
mkdir "lib\netcore45\WinRTXamlToolkit\Controls\CascadingImageControl"
mkdir "lib\netcore45\WinRTXamlToolkit\Controls\ColorPicker"
mkdir "lib\netcore45\WinRTXamlToolkit\Controls\CustomAppBar"
mkdir "lib\netcore45\WinRTXamlToolkit\Controls\CustomGridSplitter"
mkdir "lib\netcore45\WinRTXamlToolkit\Controls\DelayedLoadControl"
mkdir "lib\netcore45\WinRTXamlToolkit\Controls\ImageButton"
mkdir "lib\netcore45\WinRTXamlToolkit\Controls\ImageToggleButton"
mkdir "lib\netcore45\WinRTXamlToolkit\Controls\InputDialog"
mkdir "lib\netcore45\WinRTXamlToolkit\Controls\ListItemButt"on
mkdir "lib\netcore45\WinRTXamlToolkit\Controls\NumericUpDown"
mkdir "lib\netcore45\WinRTXamlToolkit\Controls\TreeView"
mkdir "lib\netcore45\WinRTXamlToolkit\Controls\WatermarkPasswordBox"
mkdir "lib\netcore45\WinRTXamlToolkit\Controls\WatermarkTextBox"
mkdir "lib\netcore45\WinRTXamlToolkit\Controls\WebBrowser"
mkdir "lib\netcore45\WinRTXamlToolkit\Themes"

@rem WinRTXamlToolkit.Composition folders
mkdir "lib\netcore45\WinRTXamlToolkit.Composition"

@rem WinRTXamlToolkit.Controls.Calendar folders
mkdir "lib\netcore45\WinRTXamlToolkit.Controls.Calendar"
mkdir "lib\netcore45\WinRTXamlToolkit.Controls.Calendar\Controls"
mkdir "lib\netcore45\WinRTXamlToolkit.Controls.Calendar\Controls\Calendar"
mkdir "lib\netcore45\WinRTXamlToolkit.Controls.Calendar\Themes"

@rem WinRTXamlToolkit.Controls.Gauge folders
mkdir "lib\netcore45\WinRTXamlToolkit.Controls.Gauge"
mkdir "lib\netcore45\WinRTXamlToolkit.Controls.Gauge\Themes"

@rem WinRTXamlToolkit.Controls.DataVisualization folders
mkdir "lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization"
mkdir "lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting"
mkdir "lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\Axis"
mkdir "lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\Chart"
mkdir "lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\DataPoint"
mkdir "lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\Primitives"
mkdir "lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\Series"
mkdir "lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Legend"
mkdir "lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Themes"
mkdir "lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Title"

@rem WinRTXamlToolkit.Debugging folders
mkdir "lib\netcore45\WinRTXamlToolkit.Debugging\Controls\EditableListBox"
mkdir "lib\netcore45\WinRTXamlToolkit.Debugging\Themes"
mkdir "lib\netcore45\WinRTXamlToolkit.Debugging\Views\PropertyEditors"

:COPY_FILES
@rem copy "..\src\SomeController.cs" content
copy "..\WinRTXamlToolkit 8.0\bin\Release\WinRTXamlToolkit.*" "lib\netcore45"
copy "..\WinRTXamlToolkit.Composition 8.0\bin\Release\WinRTXamlToolkit.Composition.*" "lib\netcore45"
copy "..\WinRTXamlToolkit.Controls.Calendar 8.0\bin\Release\WinRTXamlToolkit.Controls.Calendar.*" "lib\netcore45"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\WinRTXamlToolkit.Controls.DataVisualization.*" "lib\netcore45"
copy "..\WinRTXamlToolkit.Controls.Gauge 8.0\bin\Release\WinRTXamlToolkit.Controls.Gauge.*" "lib\netcore45"
copy "..\WinRTXamlToolkit.Debugging 8.0\bin\Debug\WinRTXamlToolkit.Debugging.*" "lib\netcore45"

copy "..\WinRTXamlToolkit 8.0\bin\Release\Controls\*.xaml" "lib\netcore45\WinRTXamlToolkit\Controls"
copy "..\WinRTXamlToolkit 8.0\bin\Release\Controls\AlternativeFrame\*.xaml" "lib\netcore45\WinRTXamlToolkit\Controls\AlternativeFrame"
copy "..\WinRTXamlToolkit 8.0\bin\Release\Controls\CameraCaptureControl\*.xaml" "lib\netcore45\WinRTXamlToolkit\Controls\CameraCaptureControl"
copy "..\WinRTXamlToolkit 8.0\bin\Release\Controls\CascadingImageControl\*.xaml" "lib\netcore45\WinRTXamlToolkit\Controls\CascadingImageControl"
copy "..\WinRTXamlToolkit 8.0\bin\Release\Controls\ColorPicker\*.xaml" "lib\netcore45\WinRTXamlToolkit\Controls\ColorPicker"
copy "..\WinRTXamlToolkit 8.0\bin\Release\Controls\CustomAppBar\*.xaml" "lib\netcore45\WinRTXamlToolkit\Controls\CustomAppBar"
copy "..\WinRTXamlToolkit 8.0\bin\Release\Controls\CustomGridSplitter\*.xaml" "lib\netcore45\WinRTXamlToolkit\Controls\CustomGridSplitter"
copy "..\WinRTXamlToolkit 8.0\bin\Release\Controls\DelayedLoadControl\*.xaml" "lib\netcore45\WinRTXamlToolkit\Controls\DelayedLoadControl"
copy "..\WinRTXamlToolkit 8.0\bin\Release\Controls\ImageButton\*.xaml" "lib\netcore45\WinRTXamlToolkit\Controls\ImageButton"
copy "..\WinRTXamlToolkit 8.0\bin\Release\Controls\ImageToggleButton\*.xaml" "lib\netcore45\WinRTXamlToolkit\Controls\ImageToggleButton"
copy "..\WinRTXamlToolkit 8.0\bin\Release\Controls\InputDialog\*.xaml" "lib\netcore45\WinRTXamlToolkit\Controls\InputDialog"
copy "..\WinRTXamlToolkit 8.0\bin\Release\Controls\ListItemButton\*.xaml" "lib\netcore45\WinRTXamlToolkit\Controls\ListItemButton"
copy "..\WinRTXamlToolkit 8.0\bin\Release\Controls\NumericUpDown\*.xaml" "lib\netcore45\WinRTXamlToolkit\Controls\NumericUpDown"
copy "..\WinRTXamlToolkit 8.0\bin\Release\Controls\TreeView\*.xaml" "lib\netcore45\WinRTXamlToolkit\Controls\TreeView"
copy "..\WinRTXamlToolkit 8.0\bin\Release\Controls\WatermarkPasswordBox\*.xaml" "lib\netcore45\WinRTXamlToolkit\Controls\WatermarkPasswordBox"
copy "..\WinRTXamlToolkit 8.0\bin\Release\Controls\WatermarkTextBox\*.xaml" "lib\netcore45\WinRTXamlToolkit\Controls\WatermarkTextBox"
copy "..\WinRTXamlToolkit 8.0\bin\Release\Controls\WebBrowser\*.xaml" "lib\netcore45\WinRTXamlToolkit\Controls\WebBrowser"
copy "..\WinRTXamlToolkit 8.0\bin\Release\Themes\*.xaml" "lib\netcore45\WinRTXamlToolkit\Themes"

copy "..\WinRTXamlToolkit.Controls.Calendar 8.0\bin\Release\Controls\Calendar\*.xaml"								"lib\netcore45\WinRTXamlToolkit.Controls.Calendar\Controls\Calendar"
copy "..\WinRTXamlToolkit.Controls.Calendar 8.0\bin\Release\Themes\*.xaml"										"lib\netcore45\WinRTXamlToolkit.Controls.Calendar\Themes"

copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\Axis\AxisLabel.xaml"				"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\Axis"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\Axis\DateTimeAxisLabel.xaml"		"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\Axis"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\Axis\DisplayAxis.xaml"				"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\Axis"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\Axis\NumericAxisLabel.xaml"			"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\Axis"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\Axis\RangeAxis.xaml"				"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\Axis"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\Chart\Chart.xaml"					"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\Chart"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\DataPoint\AreaDataPoint.xaml"		"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\DataPoint"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\DataPoint\BarDataPoint.xaml"		"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\DataPoint"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\DataPoint\BubbleDataPoint.xaml"		"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\DataPoint"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\DataPoint\ColumnDataPoint.xaml"		"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\DataPoint"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\DataPoint\LineDataPoint.xaml"		"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\DataPoint"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\DataPoint\PieDataPoint.xaml"		"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\DataPoint"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\DataPoint\ScatterDataPoint.xaml"	"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\DataPoint"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\Primitives\DelegatingListBox.xaml"	"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\Primitives"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\Series\AreaSeries.xaml"				"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\Series"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\Series\DataPointSeries.xaml"		"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\Series"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\Series\DefinitionSeries.xaml"		"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\Series"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\Series\LegendItem.xaml"				"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\Series"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\Series\LineSeries.xaml"				"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\Series"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Charting\Series\PieSeries.xaml"				"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Charting\Series"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Legend\Legend.xaml"							"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Legend"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Themes\Generic.xaml"							"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Themes"
copy "..\WinRTXamlToolkit.Controls.DataVisualization 8.0\bin\Release\Title\Title.xaml"							"lib\netcore45\WinRTXamlToolkit.Controls.DataVisualization\Title"

copy "..\WinRTXamlToolkit.Controls.Gauge 8.0\bin\Release\Themes\*.xaml"										"lib\netcore45\WinRTXamlToolkit.Controls.Gauge\Themes"

copy "..\WinRTXamlToolkit.Debugging 8.0\bin\Debug\Controls\EditableListBox\*.xaml"								"lib\netcore45\WinRTXamlToolkit.Debugging\Controls\EditableListBox"
copy "..\WinRTXamlToolkit.Debugging 8.0\bin\Debug\Themes\*.xaml"													"lib\netcore45\WinRTXamlToolkit.Debugging\Themes"
copy "..\WinRTXamlToolkit.Debugging 8.0\bin\Debug\Views\*.xaml"													"lib\netcore45\WinRTXamlToolkit.Debugging\Views"
copy "..\WinRTXamlToolkit.Debugging 8.0\bin\Debug\Views\PropertyEditors\*.xaml"									"lib\netcore45\WinRTXamlToolkit.Debugging\Views\PropertyEditors"

@rem copy "..\src\SomePowershellScript.ps1 tools

nuget pack "WinRTXamlToolkit 8.0.nuspec"
nuget pack "WinRTXamlToolkit.Composition 8.0.nuspec"
nuget pack "WinRTXamlToolkit.Controls.DataVisualization 8.0.nuspec"
nuget pack "WinRTXamlToolkit.Controls.Calendar 8.0.nuspec"
nuget pack "WinRTXamlToolkit.Controls.Gauge 8.0.nuspec"
nuget pack "WinRTXamlToolkit.Debugging 8.0.nuspec"