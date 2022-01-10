unit u_form_main_adv360;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Menus, ECSwitch, ECSlider, u_const, ColorSpeedButtonCS, LineObj,
  LabelBox, RichMemo, HSLRingPicker, mbColorPreview, ueled, uEKnob, u_form_tapandhold, contnrs,
  u_key_layer, u_key_service, u_file_service, u_common_ui, U_Keys, UserDialog,
  FileUtil, u_form_troubleshoot, u_form_settings, u_gif, LCLIntf,
  u_form_export, Types, u_form_about, buttons, u_form_diagnostics,
  u_form_firmware, u_form_timingdelays, LResources, lcltype, BGRABitmap,
  BGRABitmapTypes, BGRAGradients, BGRAGradientScanner, u_form_intro
  {$ifdef Win32},Windows{$endif};

type

  { TFormMainAdv360 }

  TFormMainAdv360 = class(TForm)
    btnAltLayouts: TColorSpeedButtonCS;
    btnMultimediaMacro: TColorSpeedButtonCS;
    btnTopLayer: TColorSpeedButtonCS;
    btnRightLED1: TColorSpeedButtonCS;
    btnProfile: TColorSpeedButtonCS;
    btnKpLayer: TColorSpeedButtonCS;
    btnFn1Layer: TColorSpeedButtonCS;
    btnFn2Layer: TColorSpeedButtonCS;
    btnFn3Layer: TColorSpeedButtonCS;
    btnFunctionMacro: TColorSpeedButtonCS;
    btnLeftLED2: TColorSpeedButtonCS;
    btnEject: TColorSpeedButtonCS;
    btnRightLED3: TColorSpeedButtonCS;
    btnRightLED2: TColorSpeedButtonCS;
    btnLeftLED3: TColorSpeedButtonCS;
    btnMultimodifiers: TColorSpeedButtonCS;
    btnSpecialActions: TColorSpeedButtonCS;
    btnTapAndHold: TColorSpeedButtonCS;
    btnMacroOff: TColorSpeedButtonCS;
    btnLeftLED1: TColorSpeedButtonCS;
    imgSmartSet: TImage;
    imgListSave: TImageList;
    lblLayerSelect: TLabel;
    lbRow5_6: TLabelBox;
    lbRow5_7: TLabelBox;
    lbRow5_8: TLabelBox;
    lbRow5_9: TLabelBox;
    lbRow5_10: TLabelBox;
    lbRow7_1: TLabelBox;
    lbRow7_2: TLabelBox;
    lbRow7_3: TLabelBox;
    lbRow7_4: TLabelBox;
    lbRow7_5: TLabelBox;
    lbRow7_6: TLabelBox;
    lbRow8_1: TLabelBox;
    lbRow8_2: TLabelBox;
    pnlLayerSelect: TPanel;
    btnBackspaceMacro: TColorSpeedButtonCS;
    btnCancel: TColorSpeedButtonCS;
    btnCancelMacro: TColorSpeedButtonCS;
    btnClearMacro: TColorSpeedButtonCS;
    btnCloseMacro: TColorSpeedButtonCS;
    btnCommonShortcuts: TColorSpeedButtonCS;
    btnCopy: TColorSpeedButtonCS;
    btnDiagnostic: TColorSpeedButtonCS;
    btnDisableLed: TColorSpeedButtonCS;
    btnDone: TColorSpeedButtonCS;
    btnDoneMacro: TColorSpeedButtonCS;
    btnExport: TColorSpeedButtonCS;
    btnFirmware: TColorSpeedButtonCS;
    btnLayerToggling: TColorSpeedButtonCS;
    btnLayerShifting: TColorSpeedButtonCS;
    btnNumericKeypad: TColorSpeedButtonCS;
    btnHelp: TColorSpeedButtonCS;
    btnImport: TColorSpeedButtonCS;
    btnLeftAlt: TColorSpeedButtonCS;
    btnLeftCtrl: TColorSpeedButtonCS;
    btnLeftShift: TColorSpeedButtonCS;
    btnMouseClicks: TColorSpeedButtonCS;
    btnFunctionKeys: TColorSpeedButtonCS;
    btnMouseClicksMacro: TColorSpeedButtonCS;
    btnPaste: TColorSpeedButtonCS;
    btnResetAll: TColorSpeedButtonCS;
    btnResetKey: TColorSpeedButtonCS;
    btnMacro: TColorSpeedButtonCS;
    btnMultimedia: TColorSpeedButtonCS;
    btnRightAlt: TColorSpeedButtonCS;
    btnRightCtrl: TColorSpeedButtonCS;
    btnRightShift: TColorSpeedButtonCS;
    btnSave: TColorSpeedButtonCS;
    btnSaveAs: TColorSpeedButtonCS;
    btnSettings: TColorSpeedButtonCS;
    btnTimingDelays: TColorSpeedButtonCS;
    btnWindowsCombos: TColorSpeedButtonCS;
    CheckVDriveTmr: TIdleTimer;
    chkGlobalSpeed: TCheckBox;
    chkRepeatMultiplay: TCheckBox;
    ColorDialog1: TColorDialog;
    colorPreview: TmbColorPreview;
    colorPreviewKp: TmbColorPreview;
    custColor1: TmbColorPreview;
    custColor10: TmbColorPreview;
    custColor11: TmbColorPreview;
    custColor12: TmbColorPreview;
    custColor2: TmbColorPreview;
    custColor3: TmbColorPreview;
    custColor4: TmbColorPreview;
    custColor5: TmbColorPreview;
    custColor6: TmbColorPreview;
    custColor7: TmbColorPreview;
    custColor8: TmbColorPreview;
    custColor9: TmbColorPreview;
    eBlue: TEdit;
    eBlueKp: TEdit;
    eGreen: TEdit;
    eGreenKp: TEdit;
    eHTML: TEdit;
    eHTMLKp: TEdit;
    eRed: TEdit;
    eRedKp: TEdit;
    imageKnob: TImage;
    imageKnobBig: TImage;
    imgBackground: TImage;
    imgKeyboardLayout: TImage;
    imgKeyboardLighting: TImage;
    imgListMacro: TImageList;
    imgListMacroActions: TImageList;
    imgListMiniIcons: TImageList;
    imgListSettings: TImageList;
    imgSmartSet1: TImage;
    imgSmartSet2: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblBaseColor: TLabel;
    lblBColor: TLabel;
    lblBColor1: TLabel;
    lblBottomInfo: TLabel;
    lblColor: TLabel;
    lblCoTrigger: TLabel;
    lblCustomColors: TLabel;
    lblCustomColors1: TLabel;
    lblDisableMacro: TLabel;
    lblDisplaying2: TLabel;
    lblGColor: TLabel;
    lblGColor1: TLabel;
    lblGlobal: TLabel;
    lblGlobalSpeed: TLabel;
    lblMacro1: TLabel;
    lblMacro2: TLabel;
    lblMacro3: TLabel;
    lblMacroEditor: TLabel;
    lblMacroInfo: TLabel;
    lblMacroSpeedText: TLabel;
    lblMultiplay: TLabel;
    lblMultiplayText: TLabel;
    lblPlaybackSpeed: TLabel;
    lblPreMixedColors: TLabel;
    lblPreMixedColors1: TLabel;
    lblRColor: TLabel;
    lblRColor1: TLabel;
    lblRepeatMultiplay: TLabel;
    lblSpeed1: TLabel;
    lblSpeed2: TLabel;
    lbMenu: TListBox;
    lbMenuMacro: TListBox;
    lbProfile: TListBox;
    lbRow1_11: TLabelBox;
    lbRow2_13: TLabelBox;
    lbRow3_12: TLabelBox;
    lbRow4_11: TLabelBox;
    lbRow6_4: TLabelBox;
    lbRow6_3: TLabelBox;
    lbRow1_12: TLabelBox;
    lbRow2_14: TLabelBox;
    lbRow1_13: TLabelBox;
    lbRow1_14: TLabelBox;
    lbRow1_1: TLabelBox;
    lbRow2_1: TLabelBox;
    lbRow3_1: TLabelBox;
    lbRow3_14: TLabelBox;
    lbRow4_12: TLabelBox;
    lbRow2_2: TLabelBox;
    lbRow3_13: TLabelBox;
    lbRow4_1: TLabelBox;
    lbRow5_1: TLabelBox;
    lbRow1_2: TLabelBox;
    lbRow2_3: TLabelBox;
    lbRow3_2: TLabelBox;
    lbRow4_2: TLabelBox;
    lbRow5_2: TLabelBox;
    lbRow1_3: TLabelBox;
    lbRow1_4: TLabelBox;
    lbRow2_4: TLabelBox;
    lbRow2_5: TLabelBox;
    lbRow3_3: TLabelBox;
    lbRow3_4: TLabelBox;
    lbRow4_3: TLabelBox;
    lbRow4_4: TLabelBox;
    lbRow5_3: TLabelBox;
    lbRow1_5: TLabelBox;
    lbRow2_6: TLabelBox;
    lbRow3_5: TLabelBox;
    lbRow4_5: TLabelBox;
    lbRow5_4: TLabelBox;
    lbRow1_6: TLabelBox;
    lbRow5_5: TLabelBox;
    lbRow2_7: TLabelBox;
    lbRow2_8: TLabelBox;
    lbRow3_6: TLabelBox;
    lbRow3_7: TLabelBox;
    lbRow4_6: TLabelBox;
    lbRow4_7: TLabelBox;
    lbRow1_7: TLabelBox;
    lbRow2_9: TLabelBox;
    lbRow3_8: TLabelBox;
    lbRow4_8: TLabelBox;
    lbRow1_8: TLabelBox;
    lbRow2_10: TLabelBox;
    lbRow3_9: TLabelBox;
    lbRow4_9: TLabelBox;
    lbRow6_1: TLabelBox;
    lbRow1_9: TLabelBox;
    lbRow1_10: TLabelBox;
    lbRow2_11: TLabelBox;
    lbRow2_12: TLabelBox;
    lbRow3_10: TLabelBox;
    lbRow3_11: TLabelBox;
    lbRow4_10: TLabelBox;
    lbRow6_2: TLabelBox;
    ledMacroSpeed: TuELED;
    ledMultiplay: TuELED;
    lineBorderBottomMacro: TLineObj;
    lineBorderLeftMacro: TLineObj;
    lineBorderRightMacro: TLineObj;
    lineBorderTopMacro: TLineObj;
    memoMacro: TRichMemo;
    miAddCustColor: TMenuItem;
    OpenDialog: TOpenDialog;
    pmColorPreview: TPopupMenu;
    pnlAssignMacro: TPanel;
    pnlKpLayer: TPanel;
    pnlTopLayer: TPanel;
    pnlLayout: TPanel;
    pnlLayoutBtn: TPanel;
    pnlLightingBtn: TPanel;
    pnlLayoutTop: TPanel;
    pnlLighting: TPanel;
    pnlMacro: TPanel;
    pnlMain: TPanel;
    pnlMenu: TPanel;
    pnlMenuMacro: TPanel;
    pnlProfile: TPanel;
    pnlProfileOptions: TPanel;
    pnlSelectProfile: TPanel;
    preMixedColor1: TmbColorPreview;
    preMixedColor10: TmbColorPreview;
    preMixedColor11: TmbColorPreview;
    preMixedColor12: TmbColorPreview;
    preMixedColor13: TmbColorPreview;
    preMixedColor14: TmbColorPreview;
    preMixedColor15: TmbColorPreview;
    preMixedColor16: TmbColorPreview;
    preMixedColor17: TmbColorPreview;
    preMixedColor18: TmbColorPreview;
    preMixedColor19: TmbColorPreview;
    preMixedColor2: TmbColorPreview;
    preMixedColor20: TmbColorPreview;
    preMixedColor3: TmbColorPreview;
    preMixedColor4: TmbColorPreview;
    preMixedColor5: TmbColorPreview;
    preMixedColor6: TmbColorPreview;
    preMixedColor7: TmbColorPreview;
    preMixedColor8: TmbColorPreview;
    preMixedColor9: TmbColorPreview;
    rgMacro1: TRadioButton;
    rgMacro2: TRadioButton;
    rgMacro3: TRadioButton;
    ringPickerTop: THSLRingPicker;
    ringPickerKp: THSLRingPicker;
    SaveDialog: TSaveDialog;
    shpInd1: TShape;
    shpInd2: TShape;
    shpInd3: TShape;
    shpInd4: TShape;
    shpInd5: TShape;
    shpInd6: TShape;
    sliderMacroSpeed: TECSlider;
    sliderMultiplay: TECSlider;
    textMacroInput: TStaticText;
    tmrAfterFormShown: TTimer;
    procedure btnBacklightClick(Sender: TObject);
    procedure btnDisableKeyClick(Sender: TObject);
    procedure btnEjectClick(Sender: TObject);
    procedure btnFunctionMacroClick(Sender: TObject);
    procedure btnLeftMenuClick(Sender: TObject);
    procedure btnMacModifiersClick(Sender: TObject);
    procedure btnMacroClick(Sender: TObject);
    procedure btnMultimediaMacroClick(Sender: TObject);
    procedure btnProfileMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnSaveAsMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnTapAndHoldClick(Sender: TObject);
    procedure CheckVDriveTmrTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnSaveAsClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnSettingsClick(Sender: TObject);
    procedure imgBackgroundClick(Sender: TObject);
    procedure imgKeyboardLayoutClick(Sender: TObject);
    procedure imgKeyboardLightingClick(Sender: TObject);
    procedure imgProfileClick(Sender: TObject);
    procedure bCoTriggerClick(Sender: TObject);
    //procedure lblMacroInfoMouseEnter(Sender: TObject);
    //procedure lblMacroInfoMouseLeave(Sender: TObject);
    procedure memoMacroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExportClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure btnCloseMacroClick(Sender: TObject);
    procedure btnMouseClicksMacroClick(Sender: TObject);
    procedure btnCommonShortcutsClick(Sender: TObject);
    procedure btnDiagnosticClick(Sender: TObject);
    procedure btnDoneClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnCancelMacroClick(Sender: TObject);
    procedure btnDoneMacroClick(Sender: TObject);
    procedure btnFirmwareClick(Sender: TObject);
    procedure btnResetAllClick(Sender: TObject);
    procedure btnTimingDelaysClick(Sender: TObject);
    procedure btnWindowsCombosClick(Sender: TObject);
    procedure btnResetKeyClick(Sender: TObject);
    procedure chkGlobalSpeedClick(Sender: TObject);
    procedure chkRepeatMultiplayClick(Sender: TObject);
    procedure sliderMacroSpeedChange(Sender: TObject);
    procedure sliderMacroSpeedMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sliderMultiplayChange(Sender: TObject);
    procedure sliderMultiplayMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rgbKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rgbKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rgbExit(Sender: TObject);
    procedure eHTMLExit(Sender: TObject);
    procedure eHTMLKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure imgKeyboardLightingMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure lblGlobalSpeedClick(Sender: TObject);
    procedure lblRepeatMultiplayClick(Sender: TObject);
    procedure lbMenuMacroMouseLeave(Sender: TObject);
    procedure lbMenuMouseLeave(Sender: TObject);
    procedure miAddCustColorClick(Sender: TObject);
    procedure custColorKpClick(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure custColorChange(Sender: TObject);
    procedure custColorClick(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure colorPreMixedKpClick(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure colorPreMixedClick(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure colorPreviewMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure custColorDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure custColorDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ringPickerKpChange(Sender: TObject);
    procedure ringPickerChange(Sender: TObject);
    procedure tmrAfterFormShownTimer(Sender: TObject);
    procedure lbMenuMacroMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbMenuMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure lbProfileClick(Sender: TObject);
    procedure lbProfileDrawItem(Control: TWinControl; Index: Integer;
      ARect: TRect; State: TOwnerDrawState);
    procedure lbProfileMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbMenuDrawItem(Control: TWinControl; Index: Integer;
      ARect: TRect; State: TOwnerDrawState);
    procedure rgMacroClick(Sender: TObject);
    procedure btnClearMacroClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnPasteClick(Sender: TObject);
    procedure btnBackspaceMacroClick(Sender: TObject);
    procedure lbProfileMouseLeave(Sender: TObject);
    procedure MenuDrawItem(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; AState: TOwnerDrawState);
    procedure MenuItemClick(Sender: TObject);
    procedure MacroMenuItemClick(Sender: TObject);
    procedure ProfileMenuItemClick(Sender: TObject);
    procedure PopupProfileClose(Sender: TObject);
    procedure PopupProfilePopup(Sender: TObject);
    procedure LayerClick(Sender: TObject);
    procedure TopMenuClick(Sender: TObject);
    procedure ResetLayers;
  private
    closing: boolean;
    MacroMode: boolean;
    RemapMode: boolean;
    KeyModified: boolean;
    loadingMacro: boolean;
    AppSettingsLoaded: boolean;
    infoMessageShown: boolean;
    loadingSettings: boolean;
    loadingColor: boolean;
    loadingColorBase: boolean;
    loadingLedSettings: boolean;
    freqKeyDown: boolean;
    speedKeyDown: boolean;
    resetLayer: boolean;
    keyBtnList: TObjectList;
    activeKeyBtn: TLabelBox;
    activeKbKey: TKBKey;
    cusWindowState: TCusWinState;
    oldWindowState: TWindowState;
    NORMAL_HEIGHT: integer;
    NORMAL_WIDTH: integer;
    fromMasterApp: boolean;
    parentForm: TForm;
    //keyService: TKeyService;
    //fileService: TFileService;
    WindowsComboOn: boolean;
    appError: boolean;
    activeMacroMenu: string;
    remapCount: integer;
    macroCount: integer;
    tapHoldCount: integer;
    maxMacros : integer;
    maxKeystrokes : integer;
    totalKeystrokes: integer;
    currentMenuAction: TMenuAction;
    currentPopupMenu: TMenuAction;
    menuActionList: TObjectList;
    hoveredList: TObjectList;
    breatheTransparency: integer;
    breatheCycle: integer;
    breatheDirection: TColor;
    pulseColor: integer;
    spectrumCycle: integer;
    spectrumColor: integer;
    waveCycle: integer;
    profileMode: TProfileMode;
    SaveState: TSaveState;
    defaultKeyFontName: string;
    defaultKeyFontSize: integer;
    gifFrameIdx: integer;
    kbArrayCol1: array of TLabelBox;
    kbArrayCol2: array of TLabelBox;
    kbArrayCol3: array of TLabelBox;
    kbArrayCol4: array of TLabelBox;
    kbArrayCol5: array of TLabelBox;
    kbArrayCol6: array of TLabelBox;
    kbArrayCol7: array of TLabelBox;
    kbArrayCol8: array of TLabelBox;
    kbArrayCol9: array of TLabelBox;
    kbArrayCol10: array of TLabelBox;
    kbArrayCol11: array of TLabelBox;
    kbArrayCol12: array of TLabelBox;
    kbArrayCol13: array of TLabelBox;
    kbArrayCol14: array of TLabelBox;
    kbArrayRow1: array of TLabelBox;
    kbArrayRow2: array of TLabelBox;
    kbArrayRow3: array of TLabelBox;
    kbArrayRow4: array of TLabelBox;
    kbArrayRow5: array of TLabelBox;
    currentGif: string;
    popProfileMenu: TPopupMenu;
    popMouseClicks: TPopupMenu;
    popCommonShortcuts: TPopupMenu;
    popMultimediaMacro: TPopupMenu;
    popFunctionKeysMacro: TPopupMenu;
    showingVDriveErrorDlg: boolean;
    function GetControlUnderMouse: string;
    function AcceptMacro: boolean;
    procedure ActivateCoTrigger(coTriggerBtn: TColorSpeedButtonCS);
    procedure AddMacroMenuItem(var popMenu: TPopupMenu; itemName: string;
      keyCode: integer);
    procedure AddProfileMenuItem(var popMenu: TPopupMenu; itemName: string; idx: integer);
    procedure AfterColorChange;
    procedure AppDeactivate(Sender: TObject);
    function CanAssignMacro: boolean;
    procedure CancelMacro;
    procedure ChangeActiveLayer(layerIdx: integer);
    function CheckConfigMode(modeToCheck: integer): boolean;
    procedure CheckFirmware;
    function CheckSaveKey(canSave: boolean = true; checkMacroOpen: boolean = true): boolean;
    function CheckToSave(checkForVDrive: boolean): boolean;
    function CheckVDrive: boolean;
    procedure CloseMacroEditor;
    procedure continueClick(Sender: TObject);
    function DoneKey: boolean;
    function EditingMacro(showWarning: boolean=false): boolean;
    procedure EnablePaintImages(value: boolean);
    procedure FillHoveredList;
    procedure FillMenuActionList;
    function GetCoTriggerKey(Sender: TObject): TKey;
    function GetCursorNextKey(cursorPos: integer): integer;
    function GetCursorPrevKey(cursorPos: integer): integer;
    function GetKeyButtonUnderMouse(btnList: TObjectList; x: integer; y: integer): TLabelBox;
    function GetLedMode: TLedMode;
    function GetMenuActionByType(actionType: TMenuActionType): TMenuAction;
    function GetMenuActionByButton(buttonName: string): TMenuAction;
    procedure GetRBGEditColor(layerIdx: integer);
    procedure ImageMenuClick(Sender: TObject);
    procedure InitApp(scanVDrive: boolean = false);
    procedure InitKeyButtons(container: TWinControl);
    function IsKeyLoaded: boolean;
    procedure KeyButtonClick(Sender: TObject);
    procedure KeyButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure KeyButtonsBringToFront;
    procedure ShapeColorSendToBack;
    procedure LaunchDemoMode;
    procedure LoadAppSettings;
    function LoadKeyboardLayout(layoutFile: string; fileContent: TStringList
      ): boolean;
    procedure LoadKeyButtonRows;
    procedure LoadLayer(layer: TKBLayer);
    function LoadLedFile(ledFile: string; fileContent: TStringList): boolean;
    procedure LoadMacro;
    function LoadStateSettings: boolean;
    function LoadVersionInfo: boolean;
    procedure menuButtonUpdate(Sender: TObject);
    function MouseInControl(oControl: TControl): boolean;
    procedure MoveComponents(leftIdx: integer; pixels: integer);
    procedure ObjectMouseEnter(Sender: TObject);
    procedure ObjectMouseExit(Sender: TObject);
    procedure ObjectMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure openFirwareWebsite(Sender: TObject);
    procedure OpenMacroEditor;
    procedure OpenTapAndHold;
    procedure openTroubleshootingTipsClick(Sender: TObject);
    procedure PositionMenuItems;
    procedure readManualClick(Sender: TObject);
    procedure RefreshRemapInfo;
    procedure ReloadKeyButtons;
    procedure ReloadKeyButtonsColor(reset: boolean = false; repainForm: boolean = true);
    procedure RemoveCoTrigger(key: word);
    procedure RemoveKeyboardHook;
    procedure RepaintForm(fullRepaint: boolean);
    procedure ResetAllMenuAction;
    procedure ResetCoTrigger(coTriggerBtn: TColorSpeedButtonCS);
    procedure ResetMacroCoTriggers;
    procedure ResetPopupMenu;
    procedure ResetPopupMenuMacro;
    procedure ResetProfileMenu;
    procedure ResetSingleKey;
    function SaveAll(isNew: boolean=false; showSaveDialog: boolean=true): boolean;
    procedure SaveAsAll(profileNumber: string; isNew: boolean=false);
    procedure SaveStateSettings;
    procedure ScanVDrive(init: boolean);
    procedure scanVDriveClick(Sender: TObject);
    procedure scanVDriveInitClick(Sender: TObject);
    procedure SetActiveKeyButton(keyButton: TLabelBox);
    procedure SetActiveLayer(layerIdx: integer);
    procedure SetColemakKb(layerIdx: integer; bothLayers: boolean);
    procedure SetConfigMode(mode: integer; init: boolean = false);
    procedure SetCoTrigger(aKey: TKey);
    procedure SetCurrentMenuAction(aType: TMenuActionType; aButton: TColorSpeedButtonCS);
    procedure SetDvorakKb(layerIdx: integer; bothLayers: boolean);
    procedure SetFnNumericKpLeft;
    procedure SetFnNumericKpRight;
    procedure SetFormBorder(formBorder: TFormBorderStyle);
    procedure SetFreestyle2Hotkeys;
    procedure SetFreestyleProHotkeys;
    procedure SetHovered(obj: TObject; hovered: boolean; forceNormal: boolean = false);
    procedure SetKeyboardHook;
    procedure SetKeyButtonText(keybutton: TLabelBox; btnText: string);
    procedure SetMenuEnabled;
    procedure SetLedMode();
    procedure SetMacModifiersHotkeys;
    procedure SetMacroAssignTo;
    procedure SetMacroMenuItems(button: TColorSpeedButtonCS);
    procedure SetMacroMode(value: boolean);
    procedure SetMacroText(pushCursorToEnd: boolean; cursorPos: integer=-1);
    procedure SetMemoTextColor(aMemo: TRichMemo; aKeysPos: TKeysPos);
    procedure SetModifiedKey(key: word; Modifiers: string; isMacro: boolean;
      bothLayers: boolean = false; force: boolean = false; overwriteTapHold: boolean = false);
    procedure SetMousePosition(x, y: integer);
    procedure SetRemapMode(value: boolean);
    procedure SetSaveState(aSaveState: TSaveState);
    procedure SetWindowsCombo(value: boolean);
    procedure SetWorkmanKb(layerIdx: integer; bothLayers: boolean);
    procedure ShowHideKeyButtons(value: boolean);
    procedure ShowHideShapeColor(value: boolean);
    procedure ShowHideParameters(param: integer; state: boolean);
    procedure ShowIntroDialogs;
    function ShowTroubleshootingDialog(init: boolean): boolean;
    procedure UnselectActiveKey;
    procedure UpdateKeyButtonKey(kbKey: TKBKey; keyButton: TLabelBox;
      unselectKey: boolean=false; fullLoad: boolean=false);
    procedure UpdateMenu;
    procedure UpdateStateSettings;
    procedure SetConfigOS;
    function ValidateBeforeDone: boolean;
    function ValidateBeforeSave: boolean;
    procedure watchTutorialClick(Sender: TObject);
    procedure ColorChange(newColor: TColor; layerIdx: integer);
    procedure InitPopupMenus;
    procedure AddMenuItem(var popMenu: TPopupMenu; itemName: string; keyCode: integer);
  public
    currentLayoutFile: string;
    currentLedFile: string;
    currentProfileNumber: integer;
    lastKeyDown: word;
    lastKeyPressed: word;
    blueColor: TColor;
    fontColor: TColor;
    backColor: TColor;
    selKeyColor: TColor;
    copiedMacro: TKeyList;
    MacroModified: boolean;
    procedure Maximize;
    procedure InitForm(mdiParent: TForm);
  end;

var
  FormMainAdv360: TFormMainAdv360;
  KBHook: HHook;
  procedure SetKeyPress(Key: word; Modifiers: string);
  {$ifdef Win32}
  function KeyboardHookProc(Code, wParam, lParam: longint): longint; stdcall;  {this intercepts keyboard input}
  {$endif}

implementation

uses u_form_dashboard;

{$R *.lfm}

{ Key Hook }

{$ifdef Win32}

//Keyboard hook to trap key presses and process them
function KeyboardHookProc(Code, wParam, lParam: longint): longint; stdcall;
var
  Transition: TTransitionState;
  extended: TExtendedState;
  //KeystrokeDataPtr: PKeystrokeData;
  currentKey: longint;
  scanCode: longint;
begin
  //If we need keyboard input (ex: file prompt) allow key presses
  if (NeedInput) or
    (FormMainAdv360.eRed.Focused) or
    (FormMainAdv360.eRedKp.Focused) or
    (FormMainAdv360.eGreen.Focused) or
    (FormMainAdv360.eGreenKp.Focused) or
    (FormMainAdv360.eBlue.Focused) or
    (FormMainAdv360.eBlueKp.Focused) or
    (FormMainAdv360.eHTML.Focused) or
    (FormMainAdv360.eHTMLKp.Focused) or
    ((FormTapAndHold <> nil) and FormTapAndHold.eTimingDelay.Focused) then
  begin
    Result := CallNextHookEx(WH_KEYBOARD, Code, wParam, lParam);
    exit;
  end;

  //If entering speed, do nothing
  if (not FormMainAdv360.Active) and not(FormMainAdv360.fromMasterApp and FormMainAdv360.Visible) and
    not((FormTapAndHold <> nil) and FormTapAndHold.Active and
    (FormTapAndHold.eTapAction.Focused or FormTapAndHold.eHoldAction.Focused)) then
    exit;

  currentKey := wParam;

  //Checks if key is up or down
  Transition := TTransitionState((lParam shr 31) and 1);

  //Checks if key is normal or extended
  extended := TExtendedState((lParam shr 24) and 1);

  //Gets ScanCode
  scancode := (lParam and $00ff0000) >> 16;

  //Detects if numpadenter is pressed, changes key for user-defined numpad enter
  if (extended = esExtended) and (currentKey = VK_RETURN) then
    currentKey := VK_NUMPADENTER;

  //Distinguish between left and right Ctrl
  if (currentKey = VK_CONTROL) then
  begin
    if (extended = esExtended) then
      currentKey := VK_RCONTROL
    else
      currentKey := VK_LCONTROL;
  end;

  //Distinguish between left and right Alt
  if (currentKey = VK_MENU) then
  begin
    if (extended = esExtended) then
      currentKey := VK_RMENU
    else
      currentKey := VK_LMENU;
  end;

  //Distinguish between left and right Shift
  if (currentKey = VK_SHIFT) then
  begin
    currentKey := MapVirtualKey(scancode, MAPVK_VSC_TO_VK_EX);
  end;

  if (Code = HC_ACTION) then
  begin
    if (Transition = tsPressed) then //On key down
    begin
      //If not a modifier
      if not (IsModifier(currentKey)) then
      begin
        //If key is different then last pressed key (hasn't been released yet)
        if currentKey <> FormMainAdv360.lastKeyPressed then
          SetKeyPress(currentKey, keyService.GetModifierText);

        //To prevent Windows from passing the keystrokes  to the target window, the Result value must  be a nonzero value.
        Result := 1;

        //Sets last key pressed
        FormMainAdv360.lastKeyPressed := currentKey;
      end
      else
      begin
        //Adds modifier to list of active modifiers
        keyService.AddModifier(currentKey);
      end;
    end
    else if (Transition = tsReleased) then //On key up
    begin
      //When last key pressed is released we reset it
      if currentKey = FormMainAdv360.lastKeyPressed then
        FormMainAdv360.lastKeyPressed := 0;

      //If it's a  modifier and it's the last key pressed or print screen (only works on key up)
      if ((currentKey = FormMainAdv360.lastKeyDown) and IsModifier(currentKey)) or
        (currentKey in [VK_PRINT, VK_SNAPSHOT]) then
      begin
        SetKeyPress(currentKey, keyService.GetModifierText);

        //To prevent Windows from passing the keystrokes  to the target window, the Result value must  be a nonzero value.
        Result := 1;
      end;

      if IsModifier(currentKey) then
      begin
        //Removes modifier from list of active modifiers
        keyService.RemoveModifier(currentKey);
      end;
    end;
  end;
  FormMainAdv360.lastKeyDown := currentKey;
end;

{$endif}

//Only used for Mac version to trap key presses
procedure TFormMainAdv360.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
{$ifdef Darwin}var currentKey: longint;{$endif}
begin
  {$ifdef Darwin}
  //If we need keyboard input (ex: file prompt) allow key presses
  if (NeedInput) or
    (FormMainAdv360.eRed.Focused) or
    (FormMainAdv360.eRedBase.Focused) or
    (FormMainAdv360.eGreen.Focused) or
    (FormMainAdv360.eGreenBase.Focused) or
    (FormMainAdv360.eBlue.Focused) or
    (FormMainAdv360.eBlueBase.Focused) or
    (FormMainAdv360.eHTML.Focused) or
    (FormMainAdv360.eHTMLBase.Focused) or
    ((FormTapAndHold <> nil) and FormTapAndHold.eTimingDelay.Focused) then
  begin
    exit;
  end;

  //If entering speed, do nothing
  if (not FormMainAdv360.Active) and not(FormMainAdv360.fromMasterApp and FormMainAdv360.Visible) and
    not((FormTapAndHold <> nil) and FormTapAndHold.Active and
    (FormTapAndHold.eTapAction.Focused or FormTapAndHold.eHoldAction.Focused)) then
    exit;

  currentKey := key;

  //If not a modifier
  if not (IsModifier(currentKey)) then
  begin
    //If key is different then last pressed key (hasn't been released yet)
    if currentKey <> lastKeyPressed then
      SetKeyPress(currentKey, keyService.GetModifierText);

    //Sets last key pressed
    lastKeyPressed := currentKey;

    //To prevent Windows from passing the keystrokes  to the target window, the Result value must  be a nonzero value.
    Key := 0;
  end
  else
  begin
    //Adds modifier to list of active modifiers
    keyService.AddModifier(currentKey);
  end;

  lastKeyDown := currentKey;
  {$endif}
end;

//Only used for Mac OS to trap key presses
procedure TFormMainAdv360.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
  );
{$ifdef Darwin}var currentKey: longint;{$endif}
begin
  {$ifdef Darwin}
  currentKey := key;

  //When last key pressed is released we reset it
  if currentKey = lastKeyPressed then
     lastKeyPressed := 0;

  if ((currentKey = lastKeyDown) and IsModifier(currentKey)) then //or
    //(currentKey in [VK_PRINT, VK_SNAPSHOT]) then
  begin
    SetKeyPress(currentKey, keyService.GetModifierText);

    //To prevent application from passing the keystrokes  to the target window, the Result value must  be a nonzero value.
    Key := 0;
  end;

  if IsModifier(currentKey) then
  begin
    //Removes modifier from list of active modifiers
    keyService.RemoveModifier(currentKey);
  end;
  {$endif}
end;

procedure SetKeyPress(Key: word; Modifiers: string);
begin
  if (FormTapAndHold <> nil) and (FormTapAndHold.Visible) then
    FormTapAndHold.SetKeyPress(Key)
  else
    FormMainAdv360.SetModifiedKey(Key, Modifiers, FormMainAdv360.EditingMacro);
end;

{ TFormMainAdv360 }

procedure TFormMainAdv360.InitForm(mdiParent: TForm);
begin
  fromMasterApp := mdiParent <> nil;
  parentForm := mdiParent;

  NORMAL_HEIGHT := 850;
  NORMAL_WIDTH := 1550;

  self.Width := NORMAL_WIDTH;
  self.Height := NORMAL_HEIGHT;

  if (FileExists(GExecutablePath + 'backgroundlayout.png')) then
  begin
    imgKeyboardLayout.Picture.LoadFromFile(GExecutablePath + 'backgroundlayout.png');
  end;

  if (FileExists(GExecutablePath + 'backgroundlighting.png')) then
  begin
    imgKeyboardLighting.Picture.LoadFromFile(GExecutablePath + 'backgroundlighting.png');
  end;

  //From master app
  if (fromMasterApp) then
  begin
    FormStyle := TFormStyle.fsMDIChild;
    WindowState:= TWindowState.wsMaximized;
    NORMAL_HEIGHT := Parent.Height;
    NORMAL_WIDTH := Parent.Width;
    Maximize;
    ShowInTaskBar := stNever;
  end;

  cusWindowState := cwNormal;
  oldWindowState := wsNormal;
  SetFormBorder(bsNone);

  pnlMacro.Top := pnlTopLayer.Top;

  //Set default variables
  closing := false;
  showingVDriveErrorDlg := false;
  AppSettingsLoaded := false;
  infoMessageShown := false;
  loadingSettings := false;
  loadingColor := false;
  loadingColorBase := false;
  loadingLedSettings := false;
  freqKeyDown := false;
  speedKeyDown := false;
  resetLayer := false;
  keyBtnList := TObjectList.Create(false);
  activeKeyBtn := nil;
  activeKbKey := nil;
  SetConfigOS;
  keyService := TKeyService.Create;
  fileService := TFileService.Create;
  SetSaveState(ssNone);
  NeedInput := False;
  RemapMode := false;
  loadingMacro := false;
  WindowsComboOn := false;
  appError := false;
  activeMacroMenu := '';
  oldWindowState := wsNormal;
  ringPickerTop.SquarePickerHintFormat:='Adjust the brightness of your color using the color square';
  InitKeyButtons(pnlMain);
  Application.OnDeactivate := @AppDeactivate;
  CloseMacroEditor;
  currentPopupMenu := nil;
  profileMode := pmNone;
  maxMacros := MAX_MACRO_ADV360;
  maxKeystrokes := MAX_KEYSTROKES_RGB;
  lblMacroEditor.Hint := 'Each layout can store ' + IntToStr(maxKeystrokes) +
      ' total macro characters and up to ' + IntToStr(maxMacros) + ' macros';

  blueColor := KINESIS_BLUE_EDGE;
  fontColor := KINESIS_DARK_GRAY_RGB;
  backColor := KINESIS_LIGHT_GRAY_ADV360;
  selKeyColor := clRed;

  //Set correct z-order for images
  imgKeyboardLayout.SendToBack;
  imgKeyboardLighting.SendToBack;
  imgBackground.SendToBack;

  FillMenuActionList;
  FillHoveredList;
  InitPopupMenus;

  //Set keyboard Hook
  SetKeyboardHook;

  //Check for v-drive
  SetBaseDirectory(true);

  //Init app
  InitApp;
end;

{Set the keyboard hook so we  can intercept keyboard input}
procedure TFormMainAdv360.SetKeyboardHook;
begin
  //Windows
  {$ifdef Win32}
  KBHook := SetWindowsHookEx(WH_KEYBOARD, @KeyboardHookProc, HInstance,
    GetCurrentThreadId());
  {$endif}
end;

{unhook the keyboard interception}
procedure TFormMainAdv360.RemoveKeyboardHook;
begin
  //Windows
  {$ifdef Win32}
  UnHookWindowsHookEx(KBHook);
  {$endif}
end;

procedure TFormMainAdv360.FormShow(Sender: TObject);
begin
    //App error don't show main form
  if (appError) then
    self.Hide
  else
  begin
    tmrAfterFormShown.Interval := 200;
    tmrAfterFormShown.Enabled := true;
  end;
end;

procedure TFormMainAdv360.tmrAfterFormShownTimer(Sender: TObject);
begin
  tmrAfterFormShown.Enabled := false;
  // After show code
  ShowIntroDialogs;
end;

procedure TFormMainAdv360.InitApp(scanVDrive: boolean);
var
  customBtns: TCustomButtons;
  canShowApp: boolean;
  aListDrives: TStringList;
  drives: string;
  i: integer;
  titleError: string;
begin
  canShowApp := GDemoMode or CheckVDrive;

  if (canShowApp) then
  begin
    //Load config keys depending on app version
    keyService.LoadConfigKeys;

    RefreshRemapInfo;

    keyService.LoadLayerList;

    LoadKeyButtonRows;

    {$ifdef Darwin}
    btnEject.Visible := false;
    {$endif};

    if (GDemoMode) then
    begin
      btnProfile.Visible := false;
      btnSave.Visible := false;
      btnSaveAs.Visible := false;
      btnSettings.Visible := false;
      btnEject.Visible := false;
      btnImport.Visible := false;
      btnExport.Visible := false;
      btnFirmware.Visible := false;
      btnDiagnostic.Visible := false;
      SetActiveLayer(LAYER_TOP_360);
      SetActiveKeyButton(nil);
      SetConfigMode(CONFIG_LAYOUT, true);
    end
    else
    begin
      if (LoadStateSettings) then
      begin
        LoadAppSettings;
        LoadKeyboardLayout(currentLayoutFile, nil);
        LoadLedFile(currentLedFile, nil);

        SetConfigMode(CONFIG_LAYOUT, true);

        CheckVDriveTmr.Enabled := true;

        if (GDebugMode) then
          ShowMessage('LoadAppSettingsAndLayout-end');
      end
      else
        canShowApp := false;
    end;
  end;

  if not canShowApp then
  begin
    if (GDesktopMode) then
    begin
      //createCustomButton(customBtns, 'Scan for v-Drive', 175, @scanVDriveClick);
      //titleError := 'Keyboard not detected';
      ////if (scanVDrive) then
      ////  titleError := 'Scan for v-Drive';
      //
      //if (ShowDialog(titleError, 'Use the onboard shortcut “SmartSet + F8” to open the v-Drive before launching the SmartSet App',
      //  mtError, [], DEFAULT_DIAG_HEIGHT, customBtns)) = mrCancel then
      //begin
      //  appError := true;
      //  Close;
      //end;
      //
      if (not ShowTroubleshootingDialog(true)) then
      begin
        appError := true;
        Close;
      end;
    end
    else
    begin
      createCustomButton(customBtns, 'Troubleshooting Tips', 200, @openTroubleshootingTipsClick);
      ShowDialog('SmartSet App File Error', 'The SmartSet App cannot find the necessary layout and settings files on the v-drive. Replug the keyboard to regenerate these files and try launching the App again.',
        mtFSEdge, [], DEFAULT_DIAG_HEIGHT_RGB, customBtns);
      appError := true;
      Close;
    end;
  end;
  if (GDebugMode) then
    ShowMessage('App Loaded');
end;

procedure TFormMainAdv360.SetConfigOS;
begin
  //defaultKeyFontName := 'Arial Narrow';
  defaultKeyFontSize := 8;

  //Windows
  {$ifdef Win32}
  {$endif}

  //MacOS
  {$ifdef Darwin}
  self.AutoScroll := false; //No scroll bars OSX, does not work well
  self.KeyPreview := true; //traps key presses at form level
  rgMacro1.Left := rgMacro1.Left - 25;
  rgMacro1.Top := rgMacro1.Top - 4;
  rgMacro2.Left := rgMacro2.Left - 25;
  rgMacro2.Top := rgMacro2.Top - 4;
  rgMacro3.Left := rgMacro3.Left - 25;
  rgMacro3.Top := rgMacro3.Top - 4;
  btnWindowsCombos.Visible := false;
  imgSmartSet1.Left := imgSmartSet1.Left - 4;

  //Change Macro co-trigger images
  btnLeftCtrl.Caption := 'Left Control';
  btnRightCtrl.Caption := 'Right Control';
  btnLeftAlt.Caption := 'Left Option';
  btnRightAlt.Caption := 'Right Option';

  //Hide special actions for Mac
  //miRightWin.Visible := false;
  //miMenu.Visible := false;
  //miIntlKey.Visible := false;
  //miCalculator.Visible := false;
  {$endif}
end;

procedure TFormMainAdv360.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  closing := true;
  if (not CheckToSave(false)) then
  begin
    CloseAction := caNone;
    closing := false;
  end
  else
  begin
    CloseAction := caFree;
  end;
end;

procedure TFormMainAdv360.CheckVDriveTmrTimer(Sender: TObject);
begin
  if (not GDemoMode) then
    CheckVDrive;
end;

procedure TFormMainAdv360.FormDestroy(Sender: TObject);
begin
  RemoveKeyboardHook;
  FreeAndNil(keyBtnList);// := nil;
  FreeAndNil(keyService);
  FreeAndNil(fileService);
  FreeAndNil(menuActionList);
  FreeAndNil(hoveredList);// := nil;
end;

procedure TFormMainAdv360.Maximize;
var
  aRect: TRect;
begin
  if (parent <> nil) then
  begin
    aRect := Parent.ClientRect;

    self.Left := aRect.Left;
    self.Top := aRect.Top;
    self.Width := aRect.Width;
    self.Height := aRect.Height;
  end
  else
  begin
    aRect := Screen.PrimaryMonitor.WorkareaRect;

    if (cusWindowState = cwMaximized) then
    begin
      self.Height := NORMAL_HEIGHT;
      self.Width := NORMAL_WIDTH;
      self.Left := (aRect.Width - NORMAL_WIDTH) div 2;
      self.Top := (aRect.Height - NORMAL_HEIGHT) div 2;
      cusWindowState := cwNormal;
    end
    else
    begin
      self.Left := aRect.Left;
      self.Top := aRect.Top;
      self.Width := aRect.Width;
      self.Height := aRect.Height;
      cusWindowState := cwMaximized;
    end;
  end;

  UpdateStateSettings;
end;

procedure TFormMainAdv360.UpdateStateSettings;
begin
  self.DisableAlign;

  {$ifdef Win32}
  //Disable paint on form
  SendMessage(self.Handle, WM_SETREDRAW, Integer(False), 0);
  {$endif}

  oldWindowState := self.WindowState;

  {$ifdef Win32}
  //Enable paint on form on repaint
  SendMessage(self.Handle, WM_SETREDRAW, Integer(True), 0);
  {$endif}

  self.EnableAlign;
  self.Repaint;
end;

procedure TFormMainAdv360.SetSaveState(aSaveState: TSaveState);
begin
  SaveState := aSaveState;
end;

procedure TFormMainAdv360.InitKeyButtons(container: TWinControl);
var
  i: integer;
  keyButton: TLabelBox;
begin
  for i := 0 to container.ControlCount - 1 do
  begin
    if (container.Controls[i] is TLabelBox) then
    begin
      keyButton := (container.Controls[i] as TLabelBox);
      if (keyButton.Index >= 0) and (keyButton.Parent <> pnlMacro) then
      begin
        keyButton.BackColor := clNone;
        keyButton.BorderStyle := bsNone;
        keyButton.Caption := '';
        keyButton.Font.Name := defaultKeyFontName;
        keyButton.Font.Size := defaultKeyFontSize;
        keyButton.OnClick := @KeyButtonClick;
        keyButton.OnMouseDown := @KeyButtonMouseDown;
        keyButton.Hint := 'Select a key to begin programming';
        keyButton.ShowHint := true;
        keyBtnList.Add(keyButton);
      end
      else if (container.Controls[i] is TPanel) then
        InitKeyButtons(container.Controls[i] as TPanel);
    end;
  end;
end;

procedure TFormMainAdv360.AppDeactivate(Sender: TObject);
begin
  if (keyService <> nil) and (not closing) then
    keyService.ClearModifiers;
end;

procedure TFormMainAdv360.FillMenuActionList;
begin
  menuActionList := TObjectList.Create(true);

  menuActionList.Add(TMenuAction.Create(maMacro, btnMacro, nil, nil, CONFIG_LAYOUT, lmNone, false, false, false));
  menuActionList.Add(TMenuAction.Create(maMultimedia, btnMultimedia, nil, nil, CONFIG_LAYOUT, lmNone, true, false, true));
  menuActionList.Add(TMenuAction.Create(maMouseClicks, btnMouseClicks, nil, nil, CONFIG_LAYOUT, lmNone, true, false, true));
  menuActionList.Add(TMenuAction.Create(maFuncKeys, btnFunctionKeys, nil, nil, CONFIG_LAYOUT, lmNone, true, false, true));
  menuActionList.Add(TMenuAction.Create(maFnAccess, btnLayerToggling, nil, nil, CONFIG_LAYOUT, lmNone, true, false, true));
  menuActionList.Add(TMenuAction.Create(maFullKeypad, btnLayerShifting, nil, nil, CONFIG_LAYOUT, lmNone, true, false, false));
  menuActionList.Add(TMenuAction.Create(maKeypadActions, btnNumericKeypad, nil, nil, CONFIG_LAYOUT, lmNone, true, false, true));
  menuActionList.Add(TMenuAction.Create(maAltLayouts, btnAltLayouts, nil, nil, CONFIG_LAYOUT, lmNone, true, false, false));
  menuActionList.Add(TMenuAction.Create(maMultimodifiers, btnMultimodifiers, nil, nil, CONFIG_LAYOUT, lmNone, true, false, false));
  menuActionList.Add(TMenuAction.Create(maTapHold, btnTapAndHold, nil, nil, CONFIG_LAYOUT, lmNone, false, false, true));
  menuActionList.Add(TMenuAction.Create(maSpecialActions, btnSpecialActions, nil, nil, CONFIG_LAYOUT, lmNone, true, false, true));
end;

procedure TFormMainAdv360.FillHoveredList;
var
  i: integer;
  obj: TObject;
begin
  hoveredList := TObjectList.Create(true);

  //Settings top right
  hoveredList.Add(THoveredObj.Create(btnSettings, imgListSettings, 0, 1));
  hoveredList.Add(THoveredObj.Create(btnImport, imgListSettings, 2, 3));
  hoveredList.Add(THoveredObj.Create(btnFirmware, imgListSettings, 4, 5));
  hoveredList.Add(THoveredObj.Create(btnExport, imgListSettings, 6, 7));
  hoveredList.Add(THoveredObj.Create(btnDiagnostic, imgListSettings, 8, 9));
  hoveredList.Add(THoveredObj.Create(btnHelp, imgListSettings, 10, 11));
  hoveredList.Add(THoveredObj.Create(btnEject, imgListSettings, 12, 13));

  //Save profile section
  hoveredList.Add(THoveredObj.Create(btnSave, imgListSave, 0, 1));
  hoveredList.Add(THoveredObj.Create(btnSaveAs, imgListSave, 2, 3));

  //Profile section buttons
  hoveredList.Add(THoveredObj.Create(btnDone, imgListMiniIcons, 0, 1));
  hoveredList.Add(THoveredObj.Create(btnCancel, imgListMiniIcons, 2, 3));
  hoveredList.Add(THoveredObj.Create(btnResetKey, imgListMiniIcons, 4, 5));
  hoveredList.Add(THoveredObj.Create(btnResetAll, imgListMiniIcons, 6, 7));

  //Macro actions
  hoveredList.Add(THoveredObj.Create(btnBackspaceMacro, imgListMacroActions, 0, 1));
  hoveredList.Add(THoveredObj.Create(btnMouseClicksMacro, imgListMacroActions, 2, 3));
  hoveredList.Add(THoveredObj.Create(btnClearMacro, imgListMacroActions, 4, 5));
  hoveredList.Add(THoveredObj.Create(btnCommonShortcuts, imgListMacroActions, 6, 7));
  hoveredList.Add(THoveredObj.Create(btnCopy, imgListMacroActions, 8, 9));
  hoveredList.Add(THoveredObj.Create(btnTimingDelays, imgListMacroActions, 10, 11));
  hoveredList.Add(THoveredObj.Create(btnPaste, imgListMacroActions, 12, 13));
  hoveredList.Add(THoveredObj.Create(btnWindowsCombos, imgListMacroActions, 14, 15));
  hoveredList.Add(THoveredObj.Create(btnMultimediaMacro, imgListMacroActions, 16, 17));
  hoveredList.Add(THoveredObj.Create(btnFunctionMacro, imgListMacroActions, 18, 19));

  //Macro buttons
  hoveredList.Add(THoveredObj.Create(btnCancelMacro, imgListMacro, 0, 1));
  hoveredList.Add(THoveredObj.Create(btnDoneMacro, imgListMacro, 2, 3));

  ////Macro co-triggers
  //{$ifdef Win32}
  //hoveredList.Add(THoveredObj.Create(btnLeftCtrl, imgListTriggers, 0, 1));
  //hoveredList.Add(THoveredObj.Create(btnLeftAlt, imgListTriggers, 2, 3));
  //hoveredList.Add(THoveredObj.Create(btnLeftShift, imgListTriggers, 4, 5));
  //hoveredList.Add(THoveredObj.Create(btnRightCtrl, imgListTriggers, 6, 7));
  //hoveredList.Add(THoveredObj.Create(btnRightAlt, imgListTriggers, 8, 9));
  //hoveredList.Add(THoveredObj.Create(btnRightShift, imgListTriggers, 10, 11));
  //{$endif}
  //{$ifdef Darwin}
  //hoveredList.Add(THoveredObj.Create(btnLeftCtrl, imgListTriggers, 12, 13));
  //hoveredList.Add(THoveredObj.Create(btnLeftAlt, imgListTriggers, 14, 15));
  //hoveredList.Add(THoveredObj.Create(btnLeftShift, imgListTriggers, 4, 5));
  //hoveredList.Add(THoveredObj.Create(btnRightCtrl, imgListTriggers, 16, 17));
  //hoveredList.Add(THoveredObj.Create(btnRightAlt, imgListTriggers, 18, 19));
  //hoveredList.Add(THoveredObj.Create(btnRightShift, imgListTriggers, 10, 11));
  //{$endif}

  //Set events for each item
  for i := 0 to hoveredList.Count - 1 do
  begin
    obj := (hoveredList.Items[i] as THoveredObj).Obj;
    if (obj is TColorSpeedButtonCS) then
    begin
      (obj as TColorSpeedButtonCS).OnMouseEnter := @ObjectMouseEnter;
      (obj as TColorSpeedButtonCS).OnMouseLeave := @ObjectMouseExit;
    end
    else if (obj is TImage) then
    begin
      (obj as TImage).OnMouseEnter := @ObjectMouseEnter;
      (obj as TImage).OnMouseLeave := @ObjectMouseExit;
    end;
  end;
end;

procedure TFormMainAdv360.InitPopupMenus;
var
  popMenu: TPopupMenu;
begin
  //Profile menu
  popProfileMenu := TPopupMenu.Create(self);
  popProfileMenu.OnDrawItem := TMenuDrawItemEvent(@MenuDrawItem);
  popProfileMenu.OnClose := @PopupProfileClose;
  popProfileMenu.OnPopup := @PopupProfilePopup;
  AddProfileMenuItem(popProfileMenu, 'PROFILE 1', 1);
  AddProfileMenuItem(popProfileMenu, 'PROFILE 2', 2);
  AddProfileMenuItem(popProfileMenu, 'PROFILE 3', 3);
  AddProfileMenuItem(popProfileMenu, 'PROFILE 4', 4);
  AddProfileMenuItem(popProfileMenu, 'PROFILE 5', 5);
  AddProfileMenuItem(popProfileMenu, 'PROFILE 6', 6);
  AddProfileMenuItem(popProfileMenu, 'PROFILE 7', 7);
  AddProfileMenuItem(popProfileMenu, 'PROFILE 8', 8);
  AddProfileMenuItem(popProfileMenu, 'PROFILE 9', 9);

  //Layout menu

  //Multimedia
  popMenu := TPopupMenu.Create(self);
  popMenu.OnDrawItem := TMenuDrawItemEvent(@MenuDrawItem);
  AddMenuItem(popMenu, 'Next Track', VK_MEDIA_NEXT_TRACK);
  AddMenuItem(popMenu, 'Previous Track', VK_MEDIA_PREV_TRACK);
  AddMenuItem(popMenu, 'Play', VK_MEDIA_PLAY);
  AddMenuItem(popMenu, 'Stop', VK_MEDIA_STOP);
  AddMenuItem(popMenu, 'Mute', VK_VOLUME_MUTE);
  AddMenuItem(popMenu, 'Volume Up', VK_VOLUME_UP);
  AddMenuItem(popMenu, 'Volume Down', VK_VOLUME_DOWN);
  AddMenuItem(popMenu, 'Forward', VK_MEDIA_FORWARD);
  AddMenuItem(popMenu, 'Pause', VK_MEDIA_PAUSE);
  AddMenuItem(popMenu, 'Eject', VK_MEDIA_EJECT);
  AddMenuItem(popMenu, 'Play/Pause', VK_MEDIA_PLAY_PAUSE);
  AddMenuItem(popMenu, 'Record', VK_MEDIA_RECORD);
  AddMenuItem(popMenu, 'Random Play', VK_MEDIA_RANDOM_PLAY);
  AddMenuItem(popMenu, 'Play/Skip', VK_MEDIA_PLAY_SKIP);
  AddMenuItem(popMenu, 'Microphone Mute', VK_MIC_MUTE);
  AddMenuItem(popMenu, 'Calculator', VK_CALC);
  btnMultimedia.PopupMenu := popMenu;

  //Mouse actions
  popMenu := TPopupMenu.Create(self);
  popMenu.OnDrawItem := TMenuDrawItemEvent(@MenuDrawItem);
  AddMenuItem(popMenu, 'Left Click', VK_MOUSE_LEFT);
  AddMenuItem(popMenu, 'Middle Click', VK_MOUSE_MIDDLE);
  AddMenuItem(popMenu, 'Right Click', VK_MOUSE_RIGHT);
  AddMenuItem(popMenu, 'Button 4', VK_MOUSE_BTN4);
  AddMenuItem(popMenu, 'Button 5', VK_MOUSE_BTN5);
  AddMenuItem(popMenu, 'Scroll Up', VK_MOUSE_SCROLL_UP);
  AddMenuItem(popMenu, 'Scroll Down', VK_MOUSE_SCROLL_DOWN);
  AddMenuItem(popMenu, 'Move Left', VK_MOUSE_MOVE_LEFT);
  AddMenuItem(popMenu, 'Move Right', VK_MOUSE_MOVE_RIGHT);
  AddMenuItem(popMenu, 'Move Up', VK_MOUSE_MOVE_UP);
  AddMenuItem(popMenu, 'Move Down', VK_MOUSE_MOVE_DOWN);
  btnMouseClicks.PopupMenu := popMenu;

  //Function keys
  popMenu := TPopupMenu.Create(self);
  popMenu.OnDrawItem := TMenuDrawItemEvent(@MenuDrawItem);
  AddMenuItem(popMenu, 'F1', VK_F1);
  AddMenuItem(popMenu, 'F2', VK_F2);
  AddMenuItem(popMenu, 'F3', VK_F3);
  AddMenuItem(popMenu, 'F4', VK_F4);
  AddMenuItem(popMenu, 'F5', VK_F5);
  AddMenuItem(popMenu, 'F6', VK_F6);
  AddMenuItem(popMenu, 'F7', VK_F7);
  AddMenuItem(popMenu, 'F8', VK_F8);
  AddMenuItem(popMenu, 'F9', VK_F9);
  AddMenuItem(popMenu, 'F10', VK_F10);
  AddMenuItem(popMenu, 'F11', VK_F11);
  AddMenuItem(popMenu, 'F12', VK_F12);
  AddMenuItem(popMenu, 'F13', VK_F13);
  AddMenuItem(popMenu, 'F14', VK_F14);
  AddMenuItem(popMenu, 'F15', VK_F15);
  AddMenuItem(popMenu, 'F16', VK_F16);
  AddMenuItem(popMenu, 'F17', VK_F17);
  AddMenuItem(popMenu, 'F18', VK_F18);
  AddMenuItem(popMenu, 'F19', VK_F19);
  AddMenuItem(popMenu, 'F20', VK_F20);
  AddMenuItem(popMenu, 'F21', VK_F21);
  AddMenuItem(popMenu, 'F22', VK_F22);
  AddMenuItem(popMenu, 'F23', VK_F23);
  AddMenuItem(popMenu, 'F24', VK_F24);
  btnFunctionKeys.PopupMenu := popMenu;

  //Laying Shifting
  popMenu := TPopupMenu.Create(self);
  popMenu.OnDrawItem := TMenuDrawItemEvent(@MenuDrawItem);
  AddMenuItem(popMenu, 'Top Shift', VK_TOP_LAYER_SHIFT);
  AddMenuItem(popMenu, 'Kp Shift', VK_KP_LAYER_SHIFT);
  AddMenuItem(popMenu, 'Fn1 Shift', VK_FN1_LAYER_SHIFT);
  AddMenuItem(popMenu, 'Fn2 Shift', VK_FN2_LAYER_SHIFT);
  AddMenuItem(popMenu, 'Fn3 Shift', VK_FN3_LAYER_SHIFT);
  btnLayerShifting.PopupMenu := popMenu;

  //Layer Toggling
  popMenu := TPopupMenu.Create(self);
  popMenu.OnDrawItem := TMenuDrawItemEvent(@MenuDrawItem);
  AddMenuItem(popMenu, 'Top Toggle', VK_TOP_LAYER_TOGGLE);
  AddMenuItem(popMenu, 'Kp Toggle', VK_KP_LAYER_TOGGLE);
  AddMenuItem(popMenu, 'Fn1 Toggle', VK_FN1_LAYER_TOGGLE);
  AddMenuItem(popMenu, 'Fn2 Toggle', VK_FN2_LAYER_TOGGLE);
  AddMenuItem(popMenu, 'Fn3 Toggle', VK_FN3_LAYER_TOGGLE);
  btnLayerToggling.PopupMenu := popMenu;

  //Keypad actions
  popMenu := TPopupMenu.Create(self);
  popMenu.OnDrawItem := TMenuDrawItemEvent(@MenuDrawItem);
  AddMenuItem(popMenu, 'Full Keypad Right', VK_NUMERIC_RIGHT);
  AddMenuItem(popMenu, 'Full Keypad Left', VK_NUMERIC_LEFT);
  btnNumericKeypad.PopupMenu := popMenu;

  //Alternate layouts
  popMenu := TPopupMenu.Create(self);
  popMenu.OnDrawItem := TMenuDrawItemEvent(@MenuDrawItem);
  AddMenuItem(popMenu, 'Dvorak', VK_DVORAK);
  AddMenuItem(popMenu, 'Colemak', VK_COLEMAK);
  AddMenuItem(popMenu, 'Workman', VK_WORKMAN);
  btnAltLayouts.PopupMenu := popMenu;

  //Multimodifiers
  popMenu := TPopupMenu.Create(self);
  popMenu.OnDrawItem := TMenuDrawItemEvent(@MenuDrawItem);
  AddMenuItem(popMenu, 'Hyper', VK_HYPER);
  AddMenuItem(popMenu, 'Meh', VK_Meh);
  btnMultimodifiers.PopupMenu := popMenu;

  //Special actions
  popMenu := TPopupMenu.Create(self);
  popMenu.OnDrawItem := TMenuDrawItemEvent(@MenuDrawItem);
  AddMenuItem(popMenu, 'Disable Key', VK_NULL);
  AddMenuItem(popMenu, 'SmartSet Key', VK_SMARTSET);
  AddMenuItem(popMenu, 'Stop Macro', VK_STOP_MACRO_PLAYBACK);
  AddMenuItem(popMenu, 'Application', VK_APPS);
  //AddMenuItem(popMenu, 'Right Windows', VK_RWIN);
  //AddMenuItem(popMenu, 'Left Windows', VK_LWIN);
  //{$ifdef Win32}
  //AddMenuItem(popMenu, 'Menu', VK_KP_MENU);
  //{$endif}
  //{$ifdef darwin}
  //AddMenuItem(popMenu, 'Menu', VK_MOUSE_RIGHT);
  //{$endif}
  AddMenuItem(popMenu, 'International Key', VK_OEM_102);
  AddMenuItem(popMenu, 'System Power', VK_SHUTDOWN);
  btnSpecialActions.PopupMenu := popMenu;

  //Alternate layouts
  popMenu := TPopupMenu.Create(self);
  popMenu.OnDrawItem := TMenuDrawItemEvent(@MenuDrawItem);
  AddMenuItem(popMenu, 'Profile', VK_LED_PROFILE);
  AddMenuItem(popMenu, 'Layer', VK_LED_LAYER);
  AddMenuItem(popMenu, 'Caps Lock', VK_LED_CAPS_LOCK);
  AddMenuItem(popMenu, 'Num Lock', VK_LED_NUM_LOCK);
  AddMenuItem(popMenu, 'Scoll Lock', VK_LED_SCROLL_LOCK);
  AddMenuItem(popMenu, 'NKRO Mode', VK_LED_NKRO_MODE);
  AddMenuItem(popMenu, 'Game Mode', VK_LED_GAME_MODE);
  btnLeftLED1.PopupMenu := popMenu;

  //// MACRO menu
  //Macro mouse clicks
  popMouseClicks := TPopupMenu.Create(self);
  popMouseClicks.OnDrawItem := TMenuDrawItemEvent(@MenuDrawItem);
  AddMacroMenuItem(popMouseClicks, 'Left Click', VK_MOUSE_LEFT);
  AddMacroMenuItem(popMouseClicks, 'Middle Click', VK_MOUSE_MIDDLE);
  AddMacroMenuItem(popMouseClicks, 'Right Click', VK_MOUSE_RIGHT);
  AddMacroMenuItem(popMouseClicks, 'Button 4', VK_MOUSE_BTN4);
  AddMacroMenuItem(popMouseClicks, 'Button 5', VK_MOUSE_BTN5);
  AddMacroMenuItem(popMouseClicks, 'Double-Click', VK_MOUSE_DBL_125);
  AddMacroMenuItem(popMouseClicks, 'Scroll Up', VK_MOUSE_SCROLL_UP);
  AddMacroMenuItem(popMouseClicks, 'Scroll Down', VK_MOUSE_SCROLL_DOWN);
  AddMacroMenuItem(popMouseClicks, 'Move Left', VK_MOUSE_MOVE_LEFT);
  AddMacroMenuItem(popMouseClicks, 'Move Right', VK_MOUSE_MOVE_RIGHT);
  AddMacroMenuItem(popMouseClicks, 'Move Up', VK_MOUSE_MOVE_UP);
  AddMacroMenuItem(popMouseClicks, 'Move Down', VK_MOUSE_MOVE_DOWN);
  //btnMouseClicksMacro.PopupMenu := popMenu;

  //Macro common shortcuts
  popCommonShortcuts := TPopupMenu.Create(self);
  popCommonShortcuts.OnDrawItem := TMenuDrawItemEvent(@MenuDrawItem);
  AddMacroMenuItem(popCommonShortcuts, 'Cut', VK_CUT);
  AddMacroMenuItem(popCommonShortcuts, 'Copy', VK_COPY);
  AddMacroMenuItem(popCommonShortcuts, 'Paste', VK_PASTE);
  AddMacroMenuItem(popCommonShortcuts, 'Select All', VK_SELECTALL);
  AddMacroMenuItem(popCommonShortcuts, 'Undo', VK_UNDO);
  {$ifdef Win32} //Windows
  AddMacroMenuItem(popCommonShortcuts, 'Redo', VK_REDO);
  AddMacroMenuItem(popCommonShortcuts, 'Desktop', VK_DESKTOP);
  {$endif}
  AddMacroMenuItem(popCommonShortcuts, 'Last App', VK_LASTAPP);
  {$ifdef Win32} //Windows
  AddMacroMenuItem(popCommonShortcuts, 'Ctrl Alt Delete', VK_CTRLALTDEL);
  {$endif}
  //btnCommonShortcuts.PopupMenu := popMenu;

  //Macro multimedia shortcuts
  popMultimediaMacro := TPopupMenu.Create(self);
  popMultimediaMacro.OnDrawItem := TMenuDrawItemEvent(@MenuDrawItem);
  AddMacroMenuItem(popMultimediaMacro, 'Next Track', VK_MEDIA_NEXT_TRACK);
  AddMacroMenuItem(popMultimediaMacro, 'Previous Track', VK_MEDIA_PREV_TRACK);
  AddMacroMenuItem(popMultimediaMacro, 'Play', VK_MEDIA_PLAY);
  AddMacroMenuItem(popMultimediaMacro, 'Stop', VK_MEDIA_STOP);
  AddMacroMenuItem(popMultimediaMacro, 'Mute', VK_VOLUME_MUTE);
  AddMacroMenuItem(popMultimediaMacro, 'Volume Up', VK_VOLUME_UP);
  AddMacroMenuItem(popMultimediaMacro, 'Volume Down', VK_VOLUME_DOWN);
  AddMacroMenuItem(popMultimediaMacro, 'Forward', VK_MEDIA_FORWARD);
  AddMacroMenuItem(popMultimediaMacro, 'Pause', VK_MEDIA_PAUSE);
  AddMacroMenuItem(popMultimediaMacro, 'Eject', VK_MEDIA_EJECT);
  AddMacroMenuItem(popMultimediaMacro, 'Play/Pause', VK_MEDIA_PLAY_PAUSE);
  AddMacroMenuItem(popMultimediaMacro, 'Record', VK_MEDIA_RECORD);
  AddMacroMenuItem(popMultimediaMacro, 'Random Play', VK_MEDIA_RANDOM_PLAY);
  AddMacroMenuItem(popMultimediaMacro, 'Play/Skip', VK_MEDIA_PLAY_SKIP);
  AddMacroMenuItem(popMultimediaMacro, 'Microphone Mute', VK_MIC_MUTE);
  AddMacroMenuItem(popMultimediaMacro, 'Calculator', VK_CALC);

  //Macro function keys shortcuts
  popFunctionKeysMacro := TPopupMenu.Create(self);
  popFunctionKeysMacro.OnDrawItem := TMenuDrawItemEvent(@MenuDrawItem);
  AddMacroMenuItem(popFunctionKeysMacro, 'F1', VK_F1);
  AddMacroMenuItem(popFunctionKeysMacro, 'F2', VK_F2);
  AddMacroMenuItem(popFunctionKeysMacro, 'F3', VK_F3);
  AddMacroMenuItem(popFunctionKeysMacro, 'F4', VK_F4);
  AddMacroMenuItem(popFunctionKeysMacro, 'F5', VK_F5);
  AddMacroMenuItem(popFunctionKeysMacro, 'F6', VK_F6);
  AddMacroMenuItem(popFunctionKeysMacro, 'F7', VK_F7);
  AddMacroMenuItem(popFunctionKeysMacro, 'F8', VK_F8);
  AddMacroMenuItem(popFunctionKeysMacro, 'F9', VK_F9);
  AddMacroMenuItem(popFunctionKeysMacro, 'F10', VK_F10);
  AddMacroMenuItem(popFunctionKeysMacro, 'F11', VK_F11);
  AddMacroMenuItem(popFunctionKeysMacro, 'F12', VK_F12);
  AddMacroMenuItem(popFunctionKeysMacro, 'F13', VK_F13);
  AddMacroMenuItem(popFunctionKeysMacro, 'F14', VK_F14);
  AddMacroMenuItem(popFunctionKeysMacro, 'F15', VK_F15);
  AddMacroMenuItem(popFunctionKeysMacro, 'F16', VK_F16);
  AddMacroMenuItem(popFunctionKeysMacro, 'F17', VK_F17);
  AddMacroMenuItem(popFunctionKeysMacro, 'F18', VK_F18);
  AddMacroMenuItem(popFunctionKeysMacro, 'F19', VK_F19);
  AddMacroMenuItem(popFunctionKeysMacro, 'F20', VK_F20);
  AddMacroMenuItem(popFunctionKeysMacro, 'F21', VK_F21);
  AddMacroMenuItem(popFunctionKeysMacro, 'F22', VK_F22);
  AddMacroMenuItem(popFunctionKeysMacro, 'F23', VK_F23);
  AddMacroMenuItem(popFunctionKeysMacro, 'F24', VK_F24);
end;

procedure TFormMainAdv360.AddMenuItem(var popMenu: TPopupMenu; itemName: string; keyCode: integer);
var
  menuItem: TMenuItem;
begin
  menuItem := TMenuItem.Create(popMenu);
  menuItem.Caption := itemName;
  menuItem.Tag := keyCode;
  menuItem.OnClick := @MenuItemClick;
  popMenu.Items.Add(menuItem);
end;

procedure TFormMainAdv360.AddMacroMenuItem(var popMenu: TPopupMenu; itemName: string; keyCode: integer);
var
  menuItem: TMenuItem;
begin
  menuItem := TMenuItem.Create(popMenu);
  menuItem.Caption := itemName;
  menuItem.Tag := keyCode;
  menuItem.OnClick := @MacroMenuItemClick;
  popMenu.Items.Add(menuItem);
end;

procedure TFormMainAdv360.AddProfileMenuItem(var popMenu: TPopupMenu;
  itemName: string; idx: integer);
var
  menuItem: TMenuItem;
begin
  menuItem := TMenuItem.Create(popMenu);
  menuItem.Caption := itemName;
  menuItem.Tag := idx;
  menuItem.OnClick := @ProfileMenuItemClick;
  popMenu.Items.Add(menuItem);
end;

procedure TFormMainAdv360.MenuItemClick(Sender: TObject);
var
  mnu: TMenuItem;
  mnuAction: Integer;
  bothLayers: boolean;
  layoutName: string;
  aKbKeyOtherLayer: TKBKey;
  keyShiftActiveLayer: integer;
begin
  mnu := (sender as TMenuItem);
  mnuAction := mnu.Tag;

  if (mnuAction > 0) then
  begin
    if (mnuAction = VK_DVORAK) or (mnuAction = VK_COLEMAK) or (mnuAction = VK_WORKMAN) then
    begin
      if (mnuAction = VK_DVORAK) then
      begin
        layoutName := 'Dvorak';
      end
      else if (mnuAction = VK_COLEMAK) then
      begin
        layoutName := 'Colemak';
      end
      else if (mnuAction = VK_WORKMAN) then
      begin
        layoutName := 'Workman';
      end;

      if (ShowDialog('Alternate Layout',
        'Would you like to apply the ' + layoutName + ' alternate layout?' + #10#10 +
        'Note: Implementing this layout may overwrite existing remaps.',
        mtWarning, [mbYes, mbNo], DEFAULT_DIAG_HEIGHT_RGB) = mrYes) then
      begin
        //todo ?
        //if (mnuAction = VK_DVORAK) then
        //  SetDvorakKb(LAYER_TOP_360, false)
        //else if (mnuAction = VK_COLEMAK) then
        //  SetColemakKb(LAYER_TOP_360, false)
        //else if (mnuAction = VK_WORKMAN) then
        //  SetWorkmanKb(LAYER_TOP_360, false);
      end;
    end
    else if (mnuAction = VK_TOP_LAYER_SHIFT) or (mnuAction = VK_KP_LAYER_SHIFT) or (mnuAction = VK_FN1_LAYER_SHIFT) or
      (mnuAction = VK_FN2_LAYER_SHIFT) or (mnuAction = VK_FN3_LAYER_SHIFT) then
    begin
      KeyModified := true;
      SetSaveState(ssModified);

      keyService.SetKBKey(activeKbKey, mnuAction, true);
      UpdateKeyButtonKey(activeKbKey, activeKeyBtn);

      if (mnuAction = VK_TOP_LAYER_SHIFT) then
        aKbKeyOtherLayer := GetKeyByLayerIdx(keyService, LAYER_TOP_360, activeKeyBtn.Index)
      else if (mnuAction = VK_KP_LAYER_SHIFT) then
        aKbKeyOtherLayer := GetKeyByLayerIdx(keyService, LAYER_KEYPAD_360, activeKeyBtn.Index)
      else if (mnuAction = VK_FN1_LAYER_SHIFT) then
        aKbKeyOtherLayer := GetKeyByLayerIdx(keyService, LAYER_FN1_360, activeKeyBtn.Index)
      else if (mnuAction = VK_FN2_LAYER_SHIFT) then
        aKbKeyOtherLayer := GetKeyByLayerIdx(keyService, LAYER_FN2_360, activeKeyBtn.Index)
      else if (mnuAction = VK_FN3_LAYER_SHIFT) then
        aKbKeyOtherLayer := GetKeyByLayerIdx(keyService, LAYER_FN3_360, activeKeyBtn.Index);

      if aKbKeyOtherLayer <> nil then
      begin
        keyShiftActiveLayer := GetKeyShiftActiveLayer;
        keyService.SetKBKey(aKbKeyOtherLayer, keyShiftActiveLayer, true);
      end;
    end
    else if (mnuAction  = VK_NUMERIC_RIGHT) then
    begin
      SetFnNumericKpRight;
      ResetPopupMenu;
      ResetSingleKey;
    end
    else if (mnuAction = VK_NUMERIC_LEFT) then
    begin
      SetFnNumericKpLeft;
      ResetPopupMenu;
      ResetSingleKey;
    end
    else if (mnuAction = VK_FS2_HOTKEYS) then
    begin
      SetFreestyle2Hotkeys;
      ResetPopupMenu;
      ResetSingleKey;
    end
    else if (mnuAction = VK_FSPRO_HOTKEYS) then
    begin
      SetFreestyleProHotkeys;
      ResetPopupMenu;
      ResetSingleKey;
    end
    else if (mnuAction = VK_MAC_MODIFIERS) then
    begin
      SetMacModifiersHotkeys;
      ResetPopupMenu;
      ResetSingleKey;
    end
    else if (mnuAction = VK_LED_PROFILE) then
    begin

      ResetPopupMenu;
      ResetSingleKey;
    end
    else
    begin
      if (IsKeyLoaded) then
      begin
        bothLayers := (mnuAction = VK_FN_SHIFT) or (mnuAction = VK_FN_TOGGLE);
        SetModifiedKey(mnuAction, '', false, bothLayers, true, true);
        ResetPopupMenu;
        ResetSingleKey;
      end;
    end;
  end;
end;

procedure TFormMainAdv360.MacroMenuItemClick(Sender: TObject);
var
  mnuAction: Integer;
  mnu: TMenuItem;
begin
  mnu := (sender as TMenuItem);
  mnuAction := mnu.Tag;

  if (EditingMacro) and (mnuAction > 0) then
  begin
    if (mnuAction = VK_CUT) then
    begin
      {$ifdef Win32} //Windows
      SetModifiedKey(VK_X, L_CTRL_MOD, true)
      {$endif}
      {$ifdef Darwin}  //MacOS
      SetModifiedKey(VK_X, L_WIN_MOD, true)
      {$endif}
    end
    else if (mnuAction = VK_COPY) then
    begin
      {$ifdef Win32} //Windows
      SetModifiedKey(VK_C, L_CTRL_MOD, true)
      {$endif}
      {$ifdef Darwin}  //MacOS
      SetModifiedKey(VK_C, L_WIN_MOD, true)
      {$endif}
    end
    else if (mnuAction = VK_PASTE) then
    begin
      {$ifdef Win32} //Windows
      SetModifiedKey(VK_V, L_CTRL_MOD, true)
      {$endif}
      {$ifdef Darwin}  //MacOS
      SetModifiedKey(VK_V, L_WIN_MOD, true)
      {$endif}
    end
    else if (mnuAction = VK_PASTE) then
    begin
      {$ifdef Win32} //Windows
      SetModifiedKey(VK_V, L_CTRL_MOD, true)
      {$endif}
      {$ifdef Darwin}  //MacOS
      SetModifiedKey(VK_V, L_WIN_MOD, true)
      {$endif}
    end
    else if (mnuAction = VK_SELECTALL) then
    begin
      {$ifdef Win32} //Windows
      SetModifiedKey(VK_A, L_CTRL_MOD, true)
      {$endif}
      {$ifdef Darwin}  //MacOS
      SetModifiedKey(VK_A, L_WIN_MOD, true)
      {$endif}
    end
    else if (mnuAction = VK_UNDO) then
    begin
      {$ifdef Win32} //Windows
      SetModifiedKey(VK_Z, L_CTRL_MOD, true)
      {$endif}
      {$ifdef Darwin}  //MacOS
      SetModifiedKey(VK_Z, L_WIN_MOD, true)
      {$endif}
    end
    else if (mnuAction = VK_REDO) then
    begin
      {$ifdef Win32} //Windows
      SetModifiedKey(VK_Y, L_CTRL_MOD, true)
      {$endif}
      {$ifdef Darwin}  //MacOS
      SetModifiedKey(VK_Y, L_SHIFT_MOD + ',' + L_WIN_MOD, true)
      {$endif}
    end
    else if (mnuAction = VK_DESKTOP) then
    begin
      {$ifdef Win32} //Windows
      SetModifiedKey(VK_D, L_WIN_MOD, true)
      {$endif}
    end
    else if (mnuAction = VK_LASTAPP) then
    begin
      {$ifdef Win32} //Windows
      SetModifiedKey(VK_TAB, L_ALT_MOD, true)
      {$endif}
      {$ifdef Darwin}  //MacOS
      SetModifiedKey(VK_TAB, L_WIN_MOD, true)
      {$endif}
    end
    else if (mnuAction = VK_CTRLALTDEL) then
    begin
      {$ifdef Win32} //Windows
      SetModifiedKey(VK_DELETE, L_CTRL_MOD + ',' + L_ALT_MOD, true)
      {$endif}
    end
    else if (mnuAction = VK_MOUSE_DBL_125) then
    begin
      SetModifiedKey(VK_MOUSE_LEFT, '', true);
      SetModifiedKey(VK_MIN_DELAY + 124, '', true);
      SetModifiedKey(VK_MOUSE_LEFT, '', true);
    end
    else
    begin
      if (IsKeyLoaded) then
      begin
        SetModifiedKey(mnuAction, '', true);
      end;
    end;

    //ResetPopupMenuMacro;
  end;
end;

procedure TFormMainAdv360.ProfileMenuItemClick(Sender: TObject);
var
  layoutFile: string;
  ledFile: string;
  errorMsg: string;
  idxPos: integer;
  continue: boolean;
begin
  continue := true;
  layoutFile := '';
  ledFile := '';
  idxPos := (sender as TMenuItem).Tag;

  if (GDemoMode) then
    continue := false;

  if continue and (not CheckVDrive) then
    continue := ShowTroubleshootingDialog(false);

  if (idxPos >= MIN_LAYOUT_FILE) and (idxPos <= MAX_LAYOUT_FILE) then
  begin
    layoutFile := FILE_LAYOUT + intToStr(idxPos) + '.txt';
    ledFile := FILE_LED + intToStr(idxPos) + '.txt';
  end;

  if continue and (layoutFile <> '') then
  begin
    if (profileMode = pmSelect) then
    begin
      if CheckSaveKey and CheckToSave(true) then
      begin
        if not fileService.CheckIfFileExists(GLayoutFilePath + layoutFile) then
          fileService.SaveFile(GLayoutFilePath + layoutFile, nil, true, errorMsg);
        if not fileService.CheckIfFileExists(GLedFilePath + ledFile) then
          fileService.SaveFile(GLedFilePath + ledFile, nil, true, errorMsg);
        currentLayoutFile := GLayoutFilePath + layoutFile;
        currentLedFile := GLedFilePath + ledFile;
        currentProfileNumber := fileService.GetFileNumber(currentLayoutFile);
        LoadKeyboardLayout(currentLayoutFile, nil);
        LoadLedFile(currentLedFile, nil);
        SetSaveState(ssNone);
      end;
    end
    else if (profileMode = pmSaveAs) then
    begin
      SaveAsAll(IntToStr(idxPos));
    end;
  end;

  ResetProfileMenu;
end;

procedure TFormMainAdv360.PopupProfileClose(Sender: TObject);
begin
  //ResetProfileMenu;
end;

function TFormMainAdv360.LoadVersionInfo: boolean;
var
  errorMsg: string;
begin
  Result := False;

  errorMsg := fileService.LoadVersionInfo(GActiveDevice);

  if (errorMsg = '') then
  begin
    Result := true;
  end;
end;

procedure TFormMainAdv360.LoadAppSettings;
begin
  try
    loadingSettings := true;
    ColorChange(clRed, LAYER_TOP_360);
    ColorChange(clRed, LAYER_KEYPAD_360);
    ColorChange(clRed, LAYER_FN1_360);
    ColorChange(clRed, LAYER_FN2_360);
    ColorChange(clRed, LAYER_FN3_360);
    AppSettingsLoaded := fileService.LoadAppSettings(GAppSettingsFile) = '';
    if (AppSettingsLoaded) then
    begin
      custColor1.Color := fileService.AppSettings.CustColor1;
      custColor2.Color := fileService.AppSettings.CustColor2;
      custColor3.Color := fileService.AppSettings.CustColor3;
      custColor4.Color := fileService.AppSettings.CustColor4;
      custColor5.Color := fileService.AppSettings.CustColor5;
      custColor6.Color := fileService.AppSettings.CustColor6;
      custColor7.Color := fileService.AppSettings.CustColor7;
      custColor8.Color := fileService.AppSettings.CustColor8;
      custColor9.Color := fileService.AppSettings.CustColor9;
      custColor10.Color := fileService.AppSettings.CustColor10;
      custColor11.Color := fileService.AppSettings.CustColor11;
      custColor12.Color := fileService.AppSettings.CustColor12;
    end;
  finally
    loadingSettings := false;
  end;
end;

function TFormMainAdv360.LoadStateSettings: boolean;
var
  errorMsg: string;
//const
//  TitleStateFile = 'Load State.txt File';
begin
  Result := False;

  try
    loadingSettings := true;
    errorMsg := fileService.LoadStateSettings(GActiveDevice);

    if (errorMsg = '') then
    begin
      currentLayoutFile := GLayoutFilePath + fileService.StateSettings.LayoutFile;
      currentProfileNumber := fileService.StateSettings.StartupFileNumber;
      currentLedFile := GLedFilePath + fileService.StateSettings.LedFile;
      Result := true;
    end
    else if (GDemoMode) then
    begin
      currentLayoutFile := '';
      currentProfileNumber := 1;
      currentLedFile := '';
      Result := true;
    end;
    //else
    //  ShowDialog(TitleStateFile, errorMsg, mtError, [mbOK], DEFAULT_DIAG_HEIGHT_RGB);
  finally
    loadingSettings := false;
  end;
end;

function TFormMainAdv360.LoadKeyboardLayout(layoutFile: string; fileContent: TStringList): boolean;
var
  errorMsg: string;
  layoutContent: TStringList;
  mustFree: boolean;
const
  TitleStateFile = 'Load Layout File';
begin
  Result := False;
  mustFree := true;
  errorMsg := '';

  if (not GDemoMode) then
  begin
    try
      if (fileContent <> nil) then
      begin
        layoutContent := fileContent;
        mustFree := false;
      end
      else
      begin
        layoutContent := TStringList.Create;
        errorMsg := fileService.LoadFile(layoutFile, layoutContent, false);
      end;

      if (errorMsg = '') then
      begin
        keyService.ActiveLayer := nil;
        ChangeActiveLayer(LAYER_TOP_360);
        layoutFile := ExtractFileNameWithoutExt(ExtractFileName(layoutFile));
        keyService.ConvertFromTextFileFmt(layoutContent);
        btnProfile.Caption := 'PROFILE ' + IntToStr(currentProfileNumber) + ' ';
        Result := true;
      end
      else
      begin
        btnProfile.Caption := 'PROFILE ' + IntToStr(0) + ' ';
        ShowDialog(TitleStateFile, errorMsg, mtError, [mbOK], DEFAULT_DIAG_HEIGHT_RGB);
      end;
      SetActiveLayer(LAYER_TOP_360);
      SetActiveKeyButton(nil);
      RefreshRemapInfo;
    finally
      if (layoutContent <> nil) and mustFree then
        FreeAndNil(layoutContent);
    end;
  end;
end;

function TFormMainAdv360.LoadLedFile(ledFile: string; fileContent: TStringList): boolean;
var
  errorMsg: string;
  ledContent: TStringList;
  mustFree: boolean;
const
  TitleStateFile = 'Load Led File';
begin
  Result := False;
  mustFree := true;
  errorMsg := '';

  if (not GDemoMode) then
  begin
    try
      if (fileContent <> nil) then
      begin
        ledContent := fileContent;
        mustFree := false;
      end
      else
      begin
        ledContent := TStringList.Create;
        errorMsg := fileService.LoadFile(ledFile, ledContent, false);
      end;

      if (errorMsg = '') then
      begin
        try
          loadingSettings := true;
          ledFile := ExtractFileNameWithoutExt(ExtractFileName(ledFile));
          keyService.ConvertLedFromTextFileFmtAdv360(ledContent);
          Result := true;
        finally
          loadingSettings := false;
        end;
      end
      else
      begin
        ShowDialog(TitleStateFile, errorMsg, mtError, [mbOK], DEFAULT_DIAG_HEIGHT_RGB);
      end;

      if (keyService.ConfigMode = CONFIG_LIGHTING) then
        SetLedMode();
    finally
      if (ledContent <> nil) and mustFree then
        FreeAndNil(ledContent);
    end;
  end;
end;

function TFormMainAdv360.CheckVDrive: boolean;
begin
  result := LoadVersionInfo;
  if (result and showingVDriveErrorDlg) then
    CloseDialog(mrOK);
  SetVDriveState(Result);
end;

procedure TFormMainAdv360.SetFormBorder(formBorder: TFormBorderStyle);
begin
  //{$ifdef Win32}
  self.BorderStyle := formBorder;
  RepaintForm(true);
  //{$endif}
end;

procedure TFormMainAdv360.RefreshRemapInfo;
var
  i, j:integer;
  aLayer: TKBLayer;
  aKbKey: TKBKey;
begin
  remapCount := 0;
  macroCount := 0;
  tapHoldCount := 0;
  totalKeystrokes := 0;
  for i := 0 to keyService.KBLayers.Count - 1 do
  begin
    aLayer := keyService.KBLayers[i];
    for j := 0 to aLayer.KBKeyList.Count - 1 do
    begin
      aKbKey := aLayer.KBKeyList[j];
      if (aKbKey.TapAndHold) then
        inc(tapHoldCount)
      else if (aKbKey.IsModified) then
        inc(remapCount);

      if (aKbKey.IsMacro) then
      begin
        if (aKbKey.Macro1.Count > 0) then
          inc(macroCount);
        if (aKbKey.Macro2.Count > 0) then
          inc(macroCount);
        if (aKbKey.Macro3.Count > 0) then
          inc(macroCount);
      end;
    end;
  end;

  totalKeystrokes := keyService.CountAllKeystrokes;

  lblMacroInfo.Caption := IntToStr(macroCount) + '/' + IntToStr(maxMacros) + '  (' + IntToStr(trunc((totalKeystrokes / maxKeystrokes) * 100)) + '% Full)'

  //jm temp
  //if (remapCount + macroCount > 0) then
  //  lblRemapCount.Caption := IntToStr(remapCount + macroCount)
  //else
  //  lblRemapCount.Caption := '';

  //btnResetLayer.Enabled := (remapCount > 0) or (macroCount > 0);
  //btnResetAll.Enabled := (remapCount > 0) or (macroCount > 0);
end;

procedure TFormMainAdv360.ResetLayers;
begin
  btnTopLayer.Down := false;
  btnKpLayer.Down := false;
  btnFn1Layer.Down := false;
  btnFn2Layer.Down := false;
  btnFn3Layer.Down := false;
end;

procedure TFormMainAdv360.LayerClick(Sender: TObject);
begin
  if (sender = btnTopLayer) then
    SetActiveLayer(LAYER_TOP_360)
  else if (sender = btnKpLayer) then
    SetActiveLayer(LAYER_KEYPAD_360)
  else if (sender = btnFn1Layer) then
    SetActiveLayer(LAYER_FN1_360)
  else if (sender = btnFn2Layer) then
    SetActiveLayer(LAYER_FN2_360)
  else if (sender = btnFn3Layer) then
    SetActiveLayer(LAYER_FN3_360);
end;

procedure TFormMainAdv360.SetActiveLayer(layerIdx: integer);
begin
  keyService.ActiveLayer := keyService.GetLayer(layerIdx);

  ResetLayers;
  if (layerIdx = LAYER_TOP_360) then
     btnTopLayer.Down := true
  else if (layerIdx = LAYER_KEYPAD_360) then
     btnKpLayer.Down := true
  else if (layerIdx = LAYER_FN1_360) then
     btnFn1Layer.Down := true
  else if (layerIdx = LAYER_FN2_360) then
     btnFn2Layer.Down := true
  else if (layerIdx = LAYER_FN3_360) then
     btnFn3Layer.Down := true;

  LoadLayer(keyService.ActiveLayer);
end;

procedure TFormMainAdv360.LoadLayer(layer: TKBLayer);
begin
  try
    if (layer <> nil) then
    begin
      if (keyService.ConfigMode = CONFIG_LAYOUT) then
        ReloadKeyButtons
      else if (keyService.ConfigMode = CONFIG_LIGHTING) then
        SetLedMode();
    end;
  finally
  end;
end;

procedure TFormMainAdv360.ReloadKeyButtons;
var
  i: integer;
  keyButton: TLabelBox;
  aKbKey: TKBKey;
begin
  SetActiveKeyButton(nil);
  for i := 0 to keyService.ActiveLayer.KBKeyList.Count - 1 do
  begin
    aKbKey := keyService.ActiveLayer.KBKeyList[i];
    keyButton := GetKeyButtonByIndex(keyBtnList, aKbKey.Index);
    UpdateKeyButtonKey(aKbKey, keyButton, false, true);
  end;

  RepaintForm(false);
end;

procedure TFormMainAdv360.RepaintForm(fullRepaint: boolean);
var
   region: TRect;
begin
  //Do a form repaint
  try
    EnablePaintImages(false);

    if (fullRepaint) then
      self.Repaint  //Invalidate;
    else
    begin
      region := TRect.Create(imgKeyboardLighting.Left, imgKeyboardLighting.Top, imgKeyboardLighting.Left + imgKeyboardLighting.Width, imgKeyboardLighting.Top + imgKeyboardLighting.Height);
      InvalidateRect(pnlMain.Handle, @region, false);
      //pnlMain.Repaint;
      //pnlMain.Invalidate;
    end;
  finally
    EnablePaintImages(true);
  end;
end;

procedure TFormMainAdv360.SetActiveKeyButton(keyButton: TLabelBox);
var
   isSmartSetKey: boolean;
begin
  if CheckSaveKey(true, false) then
  begin
    MacroModified := false;
    KeyModified := false;

    if IsKeyLoaded then
    begin
      UpdateKeyButtonKey(activeKbKey, activeKeyBtn, true);
    end;

    if (keyButton = activeKeyBtn) or (keyButton = nil) or (keyService.ConfigMode <> CONFIG_LAYOUT) then
    begin
      activeKeyBtn := nil;
      activeKbKey := nil;
    end
    else
    begin
      activeKbKey := keyService.GetKbKeyByIndex(keyService.ActiveLayer, keyButton.Index);
      if (activeKbKey <> nil) and (activeKbKey.CanEdit) then
      begin
        activeKeyBtn := keyButton;
        keyService.BackupKbKey(activeKbKey);
      end
      else if (activeKbKey <> nil) then
      begin
        isSmartSetKey := keyButton.Index = 61;
        activeKbKey := nil;
        if (isSmartSetKey) then
          ShowDialog('Select key', 'You cannot reprogram the SmartSet key.', mtInformation, [mbOK], DEFAULT_DIAG_HEIGHT_RGB)
        else
          ShowDialog('Select key', 'You cannot edit this key', mtInformation, [mbOK], DEFAULT_DIAG_HEIGHT_RGB);
      end;
    end;

    if not IsKeyLoaded then
    begin
      ResetPopupMenu;
      ResetPopupMenuMacro;
      ResetSingleKey;
      textMacroInput.Visible := false;
      pnlAssignMacro.Font.Color := KINESIS_BLUE_EDGE;
      pnlAssignMacro.Caption := 'Select a key above';
    end
    else
    begin
      pnlAssignMacro.Font.Color := fontColor;
      pnlAssignMacro.Caption := '';
    end;
    memoMacro.Enabled := IsKeyLoaded and not(activeKbKey.TapAndHold);
    btnDone.Enabled := IsKeyLoaded;
    btnCancel.Enabled := IsKeyLoaded;
    btnResetKey.Enabled := IsKeyLoaded;

    UpdateKeyButtonKey(activeKbKey, activeKeyBtn);
    SetMenuEnabled;

    if (EditingMacro) then
      OpenMacroEditor;
  end;
end;

function TFormMainAdv360.IsKeyLoaded: boolean;
begin
  result := (activeKeyBtn <> nil) and (activeKbKey <> nil);
end;

function TFormMainAdv360.CheckSaveKey(canSave: boolean; checkMacroOpen: boolean
  ): boolean;
var
  msgResult: integer;
begin
  result := true;

  if IsKeyLoaded and MacroModified then
  begin
    if (canSave) then
    begin
      msgResult := ShowDialog('Apply changes',
        'This macro has been modified, do you want to apply these changes?', mtConfirmation,
        [mbYes, mbNo, mbCancel], DEFAULT_DIAG_HEIGHT_RGB);
    if msgResult = mrYes then
      result := AcceptMacro
     else if msgResult = mrNo then
      CancelMacro
    else
      result := false;
    end
    else
    begin
      ShowDialog('Macro', 'You must finish editing macro before proceeding', mtWarning, [mbOK], DEFAULT_DIAG_HEIGHT_RGB);
      result := false;
    end;
  end
  else if IsKeyLoaded and KeyModified then
    result := DoneKey;
end;

function TFormMainAdv360.CheckToSave(checkForVDrive: boolean): boolean;
var
  dialogResult: integer;
begin
  result := true;
  if (SaveState = ssModified) and not(GDemoMode) then
  begin
    if checkForVDrive and (not CheckVDrive) then
      result := ShowTroubleshootingDialog(false);

    if (result) then
    begin
      dialogResult := ShowDialog('Save',
        'Do you want to save changes to Profile ' + IntToStr(currentProfileNumber) + '?',
        mtConfirmation, [mbYes, mbNo], DEFAULT_DIAG_HEIGHT_RGB);

      if dialogResult = mrYes then
        result := SaveAll(false, false)
      else if dialogResult = mrNo then
        SetSaveState(ssNone)
      else
        result := false;
    end;
  end;
end;

procedure TFormMainAdv360.UpdateKeyButtonKey(kbKey: TKBKey; keyButton: TLabelBox;
  unselectKey: boolean; fullLoad: boolean);
var
  fontSize:integer;
  fontName: string;
  image: TImage;
begin
  fontSize := 0;
  fontName := '';

  if (kbKey <> nil) and (keyButton <> nil) then
  begin
    if (keyService.ConfigMode = CONFIG_LAYOUT) then
    begin
      keyButton.BackColor := clNone;
      keyButton.BorderWidth := 1;
      keyButton.BorderStyle := bsNone;
      keyButton.CornerSize := 10;
      keyButton.Font.Color := clWhite;
      //keyButton.Font.Style := [];
      keyButton.Bitmap := nil;

      if (kbKey.TapAndHold) then
      begin
        keyButton.Caption := kbKey.TapAction.OtherDisplayText + #10 + kbKey.HoldAction.OtherDisplayText;
        keyButton.Font.Color := blueColor;
      end
      else if (kbKey.IsModified) then
      begin
        if (kbKey.ModifiedKey.ImageName <> '') then
        begin
          image := GetImageByName(pnlMain, kbKey.ModifiedKey.ImageName);
          if (image <> nil) then
          begin
            keyButton.BackColor := blueColor;
            keyButton.Bitmap := image.Picture.Bitmap;
          end;
        end;
        keyButton.Caption := kbKey.ModifiedKey.DisplayText;
        fontSize := kbKey.ModifiedKey.DisplaySize;
        fontName := kbKey.ModifiedKey.FontName;
        keyButton.Font.Color := blueColor;
      end
      else
      begin
        if (kbKey.OriginalKey.ImageName <> '') then
        begin
          image := GetImageByName(pnlMain, kbKey.OriginalKey.ImageName);
          if (image <> nil) then
          begin
            keyButton.Bitmap := image.Picture.Bitmap;
          end;
        end;
        keyButton.Caption := kbKey.OriginalKey.DisplayText;
        fontSize := kbKey.OriginalKey.DisplaySize;
        fontName := kbKey.OriginalKey.FontName;
      end;

      if (kbKey.IsMacro) then
      begin
        keyButton.NumberOfDots := kbKey.MacroCount;
        //keyButton.Font.Style := [fsBold, fsUnderline];
      end;
    end;

    if (keyButton = activeKeyBtn) and not(unselectKey) then
    begin
      keyButton.Font.Color := selKeyColor;
      if (keyButton.Bitmap <> nil) then
        keyButton.BackColor := selKeyColor;
    end;

    if (fontSize > 0) then
      keyButton.Font.Size := fontSize
    else
      keyButton.Font.Size := defaultKeyFontSize;

    if (fontName <> '') then
      keyButton.Font.Name := fontName
    else
      keyButton.Font.Name := defaultKeyFontName;

    keyButton.Font.Bold := (keyButton.Font.Name <> UNICODE_FONT);

    if not(fullLoad) then
      keyButton.Invalidate; //Repaint;
  end;
end;

procedure TFormMainAdv360.SetConfigMode(mode: integer; init: boolean);
var
  i:integer;
  canContinue: boolean;
  menuAction: TMenuAction;
begin
  canContinue := true;

  //Stop and hide gif viewer first
  ShowHideKeyButtons(false);
  ShowHideShapeColor(false);
  ReloadKeyButtonsColor(true, false);
  SetMenuEnabled;

  //Process messages to speed up processing
  Application.ProcessMessages;

  canContinue := CheckSaveKey;

  if (canContinue) then
  begin
    SetCurrentMenuAction(maNone, nil);
    keyService.ConfigMode := mode;
    if (keyService.ConfigMode = CONFIG_LAYOUT) then
    begin
      pnlLayoutBtn.Font.Color := KINESIS_GREEN_OFFICE;
      pnlLightingBtn.Font.Color := KINESIS_DARK_GRAY_RGB;
      pnlLayoutBtn.Color := KINESIS_LIGHT_GRAY_ADV360;
      pnlLightingBtn.Color := KINESIS_DARK_GRAY_ADV360;
      pnlLighting.Visible := false;
      pnlLighting.Align := alNone;
      pnlLayout.Align := alClient;
      pnlLayout.Visible := true;
      pnlLayerSelect.Visible := true;
      PositionMenuItems;
      imgKeyboardLayout.Visible := true;
      imgKeyboardLighting.Visible := false;
      btnResetAll.Hint := 'Reset layout to default';
      KeyButtonsBringToFront;
      ShowHideKeyButtons(true);
      SetCurrentMenuAction(maNone, nil);
    end
    else if (keyService.ConfigMode = CONFIG_LIGHTING) then
    begin
      CloseMacroEditor;
      pnlLayoutBtn.Font.Color := KINESIS_DARK_GRAY_RGB;
      pnlLightingBtn.Font.Color := KINESIS_GREEN_OFFICE;
      pnlLayoutBtn.Color := KINESIS_DARK_GRAY_ADV360;
      pnlLightingBtn.Color := KINESIS_LIGHT_GRAY_ADV360;
      pnlLayout.Align := alNone;
      pnlLayout.Visible := false;
      pnlLighting.Align := alClient;
      pnlLighting.Visible := true;
      pnlLayerSelect.Visible := false;
      PositionMenuItems;
      imgKeyboardLayout.Visible := false;
      imgKeyboardLighting.Visible := true;
      btnResetAll.Hint := 'Erase color assignments for all keys';
    end;

    //imgLeftMenu.Visible := ConfigMode = CONFIG_LAYOUT;
    btnCancel.Visible := keyService.ConfigMode = CONFIG_LAYOUT;
    btnDone.Visible := keyService.ConfigMode = CONFIG_LAYOUT;
    btnResetKey.Visible := keyService.ConfigMode = CONFIG_LAYOUT;
    btnResetAll.Visible := true;
    //lblDisable.Visible := keyService.ConfigMode = CONFIG_LIGHTING;
    //chkDisable.Visible := keyService.ConfigMode = CONFIG_LIGHTING;

    if (keyService.ConfigMode = CONFIG_LAYOUT) then
    begin
      ShowHideParameters(PARAM_COLOR, false);
    end;

    for I:= 0 to menuActionList.Count - 1 do
    begin
      menuAction := (menuActionList.Items[i] as TMenuAction);
      //jm temp menuAction.ActionButton.Visible := menuAction.MenuConfig = keyService.ConfigMode;
      //jm temp menuAction.ActionLabel.Visible := menuAction.MenuConfig = keyService.ConfigMode;
    end;

    //Process messages to speed up processing
    pnlProfile.Repaint;
    Application.ProcessMessages;

    if (keyService.ConfigMode = CONFIG_LIGHTING) then
    begin
      SetLedMode();
    end
    else if (keyService.ConfigMode = CONFIG_LAYOUT) then
    begin
      ReloadKeyButtons;
    end;
  end;
end;

procedure TFormMainAdv360.FormActivate(Sender: TObject);
begin

end;

procedure TFormMainAdv360.ShowIntroDialogs;
begin
  if (not closing) and (not infoMessageShown) and (ShowNotification(fileService.AppSettings.AppIntroMsg)) and (AppSettingsLoaded or GDemoMode) then
  begin
    ShowIntro('Introduction', 'Welcome to the SmartSet App for the Advantage360. The SmartSet App lets you custom the layout for each of the 9 Profiles, configure the 6 RGB indicator LEDs, and adjust Global Keyboard Settings', backColor, fontColor);
  end;
  if (not closing) and (not infoMessageShown) and (ShowNotification(fileService.AppSettings.AppCheckFirmMsg)) and (AppSettingsLoaded) then
  begin
    CheckFirmware;
  end;
  infoMessageShown := true;
end;

function TFormMainAdv360.ShowTroubleshootingDialog(init: boolean): boolean;
var
  customBtns: TCustomButtons;
  title: string;
  message: string;
  openPosition: TPosition;
  resultTroubleshoot: integer;
begin
  result := true;

  showingVDriveErrorDlg := true;
  if init then
  begin
    title := 'Keyboard not detected';
      resultTroubleshoot := ShowTroubleshoot(title, init, backColor, fontColor);
    if (resultTroubleshoot = 1) then
      ScanVDrive(init)
    else if (resultTroubleshoot = 2) then
      LaunchDemoMode;
    result := resultTroubleshoot > 0;
  end
  else
  begin
    title := 'Keyboard Connection Lost';
    openPosition := poMainFormCenter;
    createCustomButton(customBtns, 'Scan for v-Drive', 200, @scanVDriveClick);
    title := 'Keyboard Connection Lost';
    message := 'To save your changes you must use the onboard shortcut “SmartSet + F8” to open the v-Drive and re-establish the connection with the SmartSet App.';
    createCustomButton(customBtns, 'Troubleshooting Tips', 200, @openTroubleshootingTipsClick);


    if (ShowDialog(title, message, mtError, [], DEFAULT_DIAG_HEIGHT_RGB, customBtns, '', openPosition, 700) = mrCancel) then
      result := false;
  end;
  showingVDriveErrorDlg := false;
end;

procedure TFormMainAdv360.PositionMenuItems;
begin
  //Position layout menu (last first)
  btnSpecialActions.Top := 0;
  btnMultimodifiers.Top := 0;
  btnTapAndHold.Top := 0;
  btnAltLayouts.Top := 0;
  btnNumericKeypad.Top := 0;
  btnLayerToggling.Top := 0;
  btnLayerShifting.Top := 0;
  btnFunctionKeys.Top := 0;
  btnMouseClicks.Top := 0;
  btnMultimedia.Top := 0;
  btnMacro.Top := 0;
  pnlLayerSelect.Top := -1;

  //Position lighting menu (last first)
  btnRightLED3.Top := 0;
  btnRightLED2.Top := 0;
  btnRightLED1.Top := 0;
  btnLeftLED3.Top := 0;
  btnLeftLED2.Top := 0;
  btnLeftLED1.Top := 0;
end;

procedure TFormMainAdv360.LoadKeyButtonRows;
begin
  //Rows
  SetLength(kbArrayCol1, 6);
  kbArrayCol1[0] := lbRow1_1;
  kbArrayCol1[1] := lbRow2_1;
  kbArrayCol1[2] := lbRow3_1;
  kbArrayCol1[3] := lbRow3_14;
  kbArrayCol1[4] := lbRow4_12;
  kbArrayCol1[5] := lbRow5_1;
  //
  SetLength(kbArrayCol2, 6);
  kbArrayCol2[0] := lbRow1_2;
  kbArrayCol2[1] := lbRow2_2;
  kbArrayCol2[2] := lbRow3_13;
  kbArrayCol2[3] := lbRow4_1;
  kbArrayCol2[4] := lbRow5_1;
  kbArrayCol2[5] := lbRow5_2;
  //
  SetLength(kbArrayCol3, 4);
  kbArrayCol3[0] := lbRow1_3;
  kbArrayCol3[1] := lbRow2_3;
  kbArrayCol3[2] := lbRow3_2;
  kbArrayCol3[3] := lbRow4_2;
  //
  SetLength(kbArrayCol4, 5);
  kbArrayCol4[0] := lbRow1_4;
  kbArrayCol4[1] := lbRow2_4;
  kbArrayCol4[2] := lbRow3_3;
  kbArrayCol4[3] := lbRow4_3;
  kbArrayCol4[4] := lbRow5_3;
  //
  SetLength(kbArrayCol5, 4);
  kbArrayCol5[0] := lbRow1_5;
  kbArrayCol5[1] := lbRow2_5;
  kbArrayCol5[2] := lbRow3_4;
  kbArrayCol5[3] := lbRow4_4;
  //
  SetLength(kbArrayCol6, 5);
  kbArrayCol6[0] := lbRow1_6;
  kbArrayCol6[1] := lbRow2_6;
  kbArrayCol6[2] := lbRow3_5;
  kbArrayCol6[3] := lbRow4_5;
  kbArrayCol6[4] := lbRow5_4;
  //
  SetLength(kbArrayCol7, 4);
  kbArrayCol7[0] := lbRow1_7;
  kbArrayCol7[1] := lbRow2_7;
  kbArrayCol7[2] := lbRow3_6;
  kbArrayCol7[3] := lbRow4_6;
  //
  SetLength(kbArrayCol8, 5);
  kbArrayCol8[0] := lbRow1_8;
  kbArrayCol8[1] := lbRow2_8;
  kbArrayCol8[2] := lbRow3_7;
  kbArrayCol8[3] := lbRow4_7;
  kbArrayCol8[4] := lbRow5_5;
  //
  SetLength(kbArrayCol9, 4);
  kbArrayCol9[0] := lbRow1_9;
  kbArrayCol9[1] := lbRow2_9;
  kbArrayCol9[2] := lbRow3_8;
  kbArrayCol9[3] := lbRow4_8;
  //
  SetLength(kbArrayCol10, 5);
  kbArrayCol10[0] := lbRow1_10;
  kbArrayCol10[1] := lbRow2_10;
  kbArrayCol10[2] := lbRow3_9;
  kbArrayCol10[3] := lbRow4_9;
  kbArrayCol10[4] := lbRow6_1;
  //
  SetLength(kbArrayCol11, 5);
  kbArrayCol11[0] := lbRow1_11;
  kbArrayCol11[1] := lbRow2_11;
  kbArrayCol11[2] := lbRow3_10;
  kbArrayCol11[3] := lbRow4_10;
  kbArrayCol11[4] := lbRow6_2;
  //
  SetLength(kbArrayCol12, 3);
  kbArrayCol12[0] := lbRow1_12;
  kbArrayCol12[1] := lbRow2_12;
  kbArrayCol12[2] := lbRow3_11;
  //
  SetLength(kbArrayCol13, 3);
  kbArrayCol13[0] := lbRow1_13;
  kbArrayCol13[1] := lbRow2_13;
  kbArrayCol13[2] := lbRow6_3;
  //
  SetLength(kbArrayCol14, 5);
  kbArrayCol14[0] := lbRow1_14;
  kbArrayCol14[1] := lbRow2_14;
  kbArrayCol14[2] := lbRow3_12;
  kbArrayCol14[3] := lbRow4_11;
  kbArrayCol14[4] := lbRow6_4;

  //Columns
  SetLength(kbArrayRow1, 14);
  kbArrayRow1[0] := lbRow1_1;
  kbArrayRow1[1] := lbRow1_2;
  kbArrayRow1[2] := lbRow1_3;
  kbArrayRow1[3] := lbRow1_4;
  kbArrayRow1[4] := lbRow1_5;
  kbArrayRow1[5] := lbRow1_6;
  kbArrayRow1[6] := lbRow1_7;
  kbArrayRow1[7] := lbRow1_8;
  kbArrayRow1[8] := lbRow1_9;
  kbArrayRow1[9] := lbRow1_10;
  kbArrayRow1[10] := lbRow1_11;
  kbArrayRow1[11] := lbRow1_12;
  kbArrayRow1[12] := lbRow1_13;
  kbArrayRow1[13] := lbRow1_14;
  //
  SetLength(kbArrayRow2, 14);
  kbArrayRow2[0] := lbRow2_1;
  kbArrayRow2[1] := lbRow2_2;
  kbArrayRow2[2] := lbRow2_3;
  kbArrayRow2[3] := lbRow2_4;
  kbArrayRow2[4] := lbRow2_5;
  kbArrayRow2[5] := lbRow2_6;
  kbArrayRow2[6] := lbRow2_7;
  kbArrayRow2[7] := lbRow2_8;
  kbArrayRow2[8] := lbRow2_9;
  kbArrayRow2[9] := lbRow2_10;
  kbArrayRow2[10] := lbRow2_11;
  kbArrayRow2[11] := lbRow2_12;
  kbArrayRow2[12] := lbRow2_13;
  kbArrayRow2[13] := lbRow2_14;
  //
  SetLength(kbArrayRow3, 13);
  kbArrayRow3[0] := lbRow3_1;
  kbArrayRow3[1] := lbRow3_13;
  kbArrayRow3[2] := lbRow3_2;
  kbArrayRow3[3] := lbRow3_3;
  kbArrayRow3[4] := lbRow3_4;
  kbArrayRow3[5] := lbRow3_5;
  kbArrayRow3[6] := lbRow3_6;
  kbArrayRow3[7] := lbRow3_7;
  kbArrayRow3[8] := lbRow3_8;
  kbArrayRow3[9] := lbRow3_9;
  kbArrayRow3[10] := lbRow3_10;
  kbArrayRow3[11] := lbRow3_11;
  kbArrayRow3[12] := lbRow3_12;
  //
  SetLength(kbArrayRow4, 12);
  kbArrayRow4[0] := lbRow3_14;
  kbArrayRow4[1] := lbRow4_1;
  kbArrayRow4[2] := lbRow4_2;
  kbArrayRow4[3] := lbRow4_3;
  kbArrayRow4[4] := lbRow4_4;
  kbArrayRow4[5] := lbRow4_5;
  kbArrayRow4[6] := lbRow4_6;
  kbArrayRow4[7] := lbRow4_7;
  kbArrayRow4[8] := lbRow4_8;
  kbArrayRow4[9] := lbRow4_9;
  kbArrayRow4[10] := lbRow4_10;
  kbArrayRow4[11] := lbRow4_11;
  //
  SetLength(kbArrayRow5, 10);
  kbArrayRow5[0] := lbRow4_12;
  kbArrayRow5[1] := lbRow5_1;
  kbArrayRow5[2] := lbRow5_2;
  kbArrayRow5[3] := lbRow5_3;
  kbArrayRow5[4] := lbRow5_4;
  kbArrayRow5[5] := lbRow5_5;
  kbArrayRow5[6] := lbRow6_1;
  kbArrayRow5[7] := lbRow6_2;
  kbArrayRow5[8] := lbRow6_3;
  kbArrayRow5[9] := lbRow6_4;
end;

procedure TFormMainAdv360.btnSaveClick(Sender: TObject);
begin
  SaveAll;
  SetHovered(sender, false, true);
end;

procedure TFormMainAdv360.btnSaveAsClick(Sender: TObject);
begin
  ////SaveAsAll(false);
  ////SetHovered(sender, false, true);
  //profileMode := pmSaveAs;
  //pnlSelectProfile.Left := btnSaveAs.Left;
  //pnlSelectProfile.Top := btnSaveAs.Top + btnSaveAs.Height;
  //pnlSelectProfile.Visible := true;
  ////SetMousePosition(pnlSelectProfile.Left + 50, pnlSelectProfile.Top + 10);
  //SetHovered(sender, true);
end;

procedure TFormMainAdv360.btnSaveAsMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  pt: TPoint;
begin
  if (btnSaveAs.Enabled) then
  begin
    profileMode := pmSaveAs;

    pt.x := Mouse.CursorPos.x;
    pt.y := Mouse.CursorPos.y;
    popProfileMenu.PopUp(pt.x - x, pt.y + ((Sender as TColorSpeedButtonCS).Height - y));

    btnSaveAs.Down := false;
    SetHovered(sender, false);
  end;
end;

procedure TFormMainAdv360.btnProfileMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  pt: TPoint;
begin
  if (btnProfile.Enabled) then
  begin
    profileMode := pmSelect;

    pt.x := Mouse.CursorPos.x;
    pt.y := Mouse.CursorPos.y;
    popProfileMenu.PopUp(pt.x - x, pt.y + ((Sender as TColorSpeedButtonCS).Height - y));
  end;
end;

procedure TFormMainAdv360.PopupProfilePopup(Sender: TObject);
begin
  //Set Down = false on button
  //btnSaveAs.Down := false;
end;

function TFormMainAdv360.GetControlUnderMouse: string;
var
  ctrl: TControl;
  pt: TPoint;
begin
  result := '';
  pt := ScreenToClient(Mouse.CursorPos);
  ctrl := ControlAtPos(pt, [capfRecursive, capfAllowWinControls]);
  if Assigned(ctrl) then
    result := ctrl.Name
  else
    result := Format('%d, %d', [pt.x, pt.y]);
end;

procedure TFormMainAdv360.btnSettingsClick(Sender: TObject);
begin
  ShowSettings;
  (sender as TColorSpeedButtonCS).Down := false;
  SetHovered(sender, false, true);
end;

procedure TFormMainAdv360.imgBackgroundClick(Sender: TObject);
begin
  UnselectActiveKey;
end;

procedure TFormMainAdv360.imgKeyboardLayoutClick(Sender: TObject);
begin
  UnselectActiveKey;
end;

procedure TFormMainAdv360.imgKeyboardLightingClick(Sender: TObject);
begin
  UnselectActiveKey;
end;

procedure TFormMainAdv360.UnselectActiveKey;
begin
  ResetPopupMenu;
  ResetPopupMenuMacro;
  ResetSingleKey;
  if IsKeyLoaded then
    SetActiveKeyButton(nil);
end;

function TFormMainAdv360.ValidateBeforeSave: boolean;
var
  errorMsg: string;
  errorTitle: string;
  isValid: boolean;
  macrosToRemove: integer;
begin
  isValid := true;

  RefreshRemapInfo;

  if (macroCount > maxMacros) then
  begin
    isValid := false;
    macrosToRemove := macroCount - maxMacros;
    errorTitle := 'Macro Capacity Reached';
    errorMsg := 'Please delete ' + IntToStr(macrosToRemove) + ' macros before proceeding. Each layout can accommodate a maximum of ' + IntToStr(maxMacros) + ' macros.';
  end
  else
  begin
    if (totalKeystrokes > maxKeystrokes) then
    begin
      isValid := false;
      errorTitle := 'Macro Limit Reached';
      errorMsg := 'You have reached the macro limit for Profile ' + IntToStr(currentProfileNumber) + '. To proceed, please delete an unused macro from this layout or create a new layout.';
    end;
  end;

  if (not isValid) then
  begin
    ShowDialog(errorTitle, errorMsg, mtError, [mbOk]);
  end;

  result := isValid;
end;

function TFormMainAdv360.SaveAll(isNew: boolean; showSaveDialog: boolean): boolean;
var
  errorMsg: string;
  layoutContent: TStringList;
  ledContent: TStringList;
  hideNotif: integer;
  diagMessage: string;
  diagTitle: string;
  dialHeight: integer;
  continue: boolean;
  profileNumber: integer;
  fileName: string;
  i: integer;
begin
  result := false;
  errorMsg := '';
  continue := true;

  if (GDemoMode) then
    continue := false;

  if continue and (not CheckVDrive) then
    continue := ShowTroubleshootingDialog(false);

  if (continue) then
  begin
    if (CheckSaveKey(true)) then
      continue := ValidateBeforeSave
    else
      continue := false;
  end;

  if (continue) then
  begin
    layoutContent := keyService.ConvertToTextFileFmt;
    if fileService.SaveFile(currentLayoutFile, layoutContent, true, errorMsg) then
    begin
      ledContent := keyService.ConvertLedToTextFileFmt;
      if fileService.SaveFile(currentLedFile, ledContent, true, errorMsg) then
      begin
        fileName := ExtractFileNameWithoutExt(ExtractFileName(currentLayoutFile));
        profileNumber := fileService.GetFileNumber(currentLayoutFile);
        currentProfileNumber := profileNumber;
        SetSaveState(ssNone);
        result := true;

        if not closing then
          EjectDevice(GActiveDevice);
        if (ShowNotification(fileService.AppSettings.SaveMsg)) and (showSaveDialog) then
        begin
          if (profileNumber = fileService.StateSettings.StartupFileNumber) then
          begin
            diagMessage := 'Use the Refresh Shortcut (SmartSet + Right Shift + B) to preview your updates, or close the App and disconnect the v-Drive (SmartSet + Right Shift + V).';
            diagTitle := 'Profile ' + IntToStr(profileNumber) + ' Saved';
            dialHeight := DEFAULT_DIAG_HEIGHT_RGB;
          end
          else
          begin
            diagMessage := 'To load Profile ' + IntToStr(profileNumber) + ' to the keyboard, hold the SmartSet key + Right Shift and tap the ' + IntToStr(profileNumber) + ' key.';
            diagTitle := 'Profile ' + IntToStr(profileNumber) + ' Saved';
            dialHeight := DEFAULT_DIAG_HEIGHT_RGB;
          end;
          hideNotif := ShowDialog(diagTitle, diagMessage,
            mtInformation, [mbOK], dialHeight, nil, 'Hide this notification?');
          if (hideNotif >= DISABLE_NOTIF) then
          begin
            fileService.SetSaveMsg(true);
            fileService.SaveAppSettings;
          end;
        end;
      end
      else
        ShowDialog('Save Profile', 'Error saving file: ' + errorMsg + #10 + 'Confirm that the v-drive is still open.',
          mtError, [mbOK], DEFAULT_DIAG_HEIGHT_RGB);
      if (ledContent <> nil) then
        FreeAndNil(ledContent);
    end
    else
      ShowDialog('Save Profile', 'Error saving file: ' + errorMsg + #10 + 'Confirm that the v-drive is still open.',
        mtError, [mbOK], DEFAULT_DIAG_HEIGHT_RGB);

    if (layoutContent <> nil) then
      FreeAndNil(layoutContent);
  end;
end;

procedure TFormMainAdv360.SaveAsAll(profileNumber: string; isNew: boolean = false);
var
  continue: boolean;
begin
  try
    NeedInput := True;
    continue := true;

    if (GDemoMode) then
      continue := false;

    if continue and (not CheckVDrive) then
      continue := ShowTroubleshootingDialog(false);

    if (continue) then
    begin
      if (CheckSaveKey(true)) then
        continue := ValidateBeforeSave
      else
        continue := false;
    end;

    if (continue) then
    begin
      if (profileNumber <> '') then
      begin
        if (isNew) then
          keyService.ResetLayout;
        currentLayoutFile := GLayoutFilePath + FILE_LAYOUT + profileNumber + '.txt';
        currentLedFile := GLedFilePath + FILE_LED + profileNumber + '.txt';
        currentProfileNumber := fileService.GetFileNumber(currentLayoutFile);

        SaveAll(true, true);
        LoadKeyboardLayout(currentLayoutFile, nil);
      end;
    end;
  finally
      NeedInput := False;
  end;

end;

procedure TFormMainAdv360.ReloadKeyButtonsColor(reset: boolean; repainForm: boolean);
//var
//  i: integer;
//  keyButton: TLabelBox;
//  aKbKey: TKBKey;
begin
  if (keyService.Ind1Color <> clNone) and (keyService.Ind1Color <> clBlack) then
     shpInd1.Brush.Color := keyService.Ind1Color
  else
     shpInd1.Brush.Color := KINESIS_GRAY_BACKCOLOR;//.Style := bsClear;

  if (keyService.Ind2Color <> clNone) and (keyService.Ind2Color <> clBlack) then
     shpInd2.Brush.Color := keyService.Ind2Color
  else
     shpInd2.Brush.Color := KINESIS_GRAY_BACKCOLOR;//.Style := bsClear;

  if (keyService.Ind3Color <> clNone) and (keyService.Ind3Color <> clBlack) then
     shpInd3.Brush.Color := keyService.Ind3Color
  else
     shpInd3.Brush.Color := KINESIS_GRAY_BACKCOLOR;//.Style := bsClear;

  if (keyService.Ind4Color <> clNone) and (keyService.Ind4Color <> clBlack) then
     shpInd4.Brush.Color := keyService.Ind4Color
  else
     shpInd4.Brush.Color := KINESIS_GRAY_BACKCOLOR;//.Style := bsClear;

  if (keyService.Ind5Color <> clNone) and (keyService.Ind5Color <> clBlack) then
     shpInd5.Brush.Color := keyService.Ind5Color
  else
     shpInd5.Brush.Color := KINESIS_GRAY_BACKCOLOR;//.Style := bsClear;

  if (keyService.Ind6Color <> clNone) and (keyService.Ind6Color <> clBlack) then
     shpInd6.Brush.Color := keyService.Ind6Color
  else
     shpInd6.Brush.Color := KINESIS_GRAY_BACKCOLOR;//.Style := bsClear;

  if (repainForm) then
     RepaintForm(false);
end;

procedure TFormMainAdv360.KeyButtonsBringToFront;
var
  i: integer;
  keyButton: TLabelBox;
  aKbKey: TKBKey;
begin
  for i := 0 to keyService.ActiveLayer.KBKeyList.Count - 1 do
  begin
    aKbKey := keyService.ActiveLayer.KBKeyList[i];
    keyButton := GetKeyButtonByIndex(keyBtnList, aKbKey.Index);
    if (keyButton <> nil) then
      keyButton.BringToFront;
  end;

end;

procedure TFormMainAdv360.ShapeColorSendToBack;
begin
  shpInd1.SendToBack;
  shpInd2.SendToBack;
  shpInd3.SendToBack;
  shpInd4.SendToBack;
  shpInd5.SendToBack;
  shpInd6.SendToBack;
end;

procedure TFormMainAdv360.ShowHideKeyButtons(value: boolean);
var
  i: integer;
  keyButton: TLabelBox;
  aKbKey: TKBKey;
begin
  for i := 0 to keyService.ActiveLayer.KBKeyList.Count - 1 do
  begin
    aKbKey := keyService.ActiveLayer.KBKeyList[i];
    keyButton := GetKeyButtonByIndex(keyBtnList, aKbKey.Index);
    if (keyButton <> nil) then
      keyButton.Visible := value;
  end;
end;

procedure TFormMainAdv360.ShowHideShapeColor(value: boolean);
begin
  shpInd1.Visible := value;
  shpInd2.Visible := value;
  shpInd3.Visible := value;
  shpInd4.Visible := value;
  shpInd5.Visible := value;
  shpInd6.Visible := value;
end;

function TFormMainAdv360.CheckConfigMode(modeToCheck: integer): boolean;
begin
  result := true;
  if (modeToCheck <> keyService.ConfigMode) then
  begin
    if (modeToCheck = CONFIG_LAYOUT) then
      ShowDialog('Editor', 'Your must select the Layout editor to continue', mtWarning, [mbOK], DEFAULT_DIAG_HEIGHT_RGB)
    else if (modeToCheck = CONFIG_LIGHTING) then
      ShowDialog('Editor', 'Your must select the Lighting editor to continue', mtWarning, [mbOK], DEFAULT_DIAG_HEIGHT_RGB);

    result := false;
  end;
end;

procedure TFormMainAdv360.SaveStateSettings;
var
  errorMsg: string;
const
  TitleStateFile = 'Save State.txt File';
begin
  errorMsg := fileService.SaveStateSettings(GActiveDevice);

  if (errorMsg <> '') then
    ShowDialog(TitleStateFile, errorMsg, mtError, [mbOK], DEFAULT_DIAG_HEIGHT_RGB);
end;

procedure TFormMainAdv360.watchTutorialClick(Sender: TObject);
begin
  OpenUrl(ADV360_TUTORIAL);
end;

procedure TFormMainAdv360.readManualClick(Sender: TObject);
begin
  OpenUrl(ADV360_MANUAL);
end;

procedure TFormMainAdv360.openTroubleshootingTipsClick(Sender: TObject);
begin
  OpenUrl(ADV360_MANUAL);
end;

procedure TFormMainAdv360.ScanVDrive(init: boolean);
begin
  if (init) then
  begin
    CloseDialog(mrOK);
    if (SetBaseDirectory) then
      ResetAppPaths;
    InitApp(true);
  end
  else
  begin
    if (CheckVDrive) then
    begin
      CloseDialog(mrOK);
      if (SetBaseDirectory) then
        ResetAppPaths;
    end;
  end;
end;

procedure TFormMainAdv360.LaunchDemoMode;
begin
  GDemoMode := true;
  if (CheckVDrive or GDemoMode) then
  begin
    CloseDialog(mrOK);
    if (SetBaseDirectory) then
      ResetAppPaths;
    InitApp(false);
  end;
end;

procedure TFormMainAdv360.scanVDriveClick(Sender: TObject);
begin
  ScanVDrive(false);
end;

procedure TFormMainAdv360.scanVDriveInitClick(Sender: TObject);
begin
  ScanVDrive(false);
end;

procedure TFormMainAdv360.ShowHideParameters(param: integer; state: boolean);
begin
  case param of
    PARAM_COLOR:
    begin
      pnlTopLayer.Visible := state;
      pnlTopLayer.Repaint;

      pnlKpLayer.Visible := state;
      pnlKpLayer.Repaint;
    end;
  end;
end;

procedure TFormMainAdv360.SetRemapMode(value: boolean);
begin

end;

procedure TFormMainAdv360.SetMacroMode(value: boolean);
begin
  if MacroMode and not(value) then
    SetActiveKeyButton(nil);

  MacroMode := value;

  if (MacroMode) then
  begin
    if (IsKeyLoaded) then
      OpenMacroEditor;
  end
  else
  begin

  end;
end;

function TFormMainAdv360.GetLedMode: TLedMode;
var
  i: integer;
begin
  result := lmNone;
  for i := 0 to menuActionList.Count - 1 do
  begin
    if (menuActionList.Items[i] as TMenuAction).IsDown then
    begin
      result := (menuActionList.Items[i] as TMenuAction).LedMode;
    end;
  end;
end;

procedure TFormMainAdv360.SetLedMode();
begin
  try
    loadingLedSettings := true;
    ShowHideKeyButtons(false);

    ShowHideParameters(PARAM_COLOR, true);

    imgKeyboardLighting.SendToBack;
    ShapeColorSendToBack;
    ShowHideShapeColor(true);
    imgBackground.SendToBack;
    imgKeyboardLighting.Cursor := crHandPoint;

    //todo ColorChange(keyService.

    ReloadKeyButtonsColor;
  finally
    loadingLedSettings := false;
  end;
end;

procedure TFormMainAdv360.CheckFirmware;
var
  customBtns: TCustomButtons;
  hideNotif: integer;
begin
  if (fileService.VersionIsEqualKBD(1, 0, 0)) then
  begin
    //createCustomButton(customBtns, 'OK', 100, nil, bkOK);
    createCustomButton(customBtns, 'Upgrade Firmware', 175, @openFirwareWebsite);
    hideNotif := ShowDialog('Firmware', 'Attention macro users: Update your firmware now for full functionality.',
      mtWarning, [], DEFAULT_DIAG_HEIGHT_RGB, customBtns, 'Hide this notification?');

    if (hideNotif >= DISABLE_NOTIF) then
    begin
      fileService.SetAppCheckFirmMsg(true);
      fileService.SaveAppSettings;
    end;
  end;
end;

procedure TFormMainAdv360.SetMenuEnabled;
begin
  btnMultimedia.Enabled := IsKeyLoaded;
  btnMouseClicks.Enabled := IsKeyLoaded;
  btnFunctionKeys.Enabled := IsKeyLoaded;
  btnLayerShifting.Enabled := IsKeyLoaded;
  btnLayerToggling.Enabled := IsKeyLoaded;
  btnTapAndHold.Enabled := IsKeyLoaded;
  btnMultimodifiers.Enabled := IsKeyLoaded;
  btnSpecialActions.Enabled := IsKeyLoaded;
end;

procedure TFormMainAdv360.bCoTriggerClick(Sender: TObject);
var
  button: TColorSpeedButtonCS;
  aKey: TKey;
begin
  if IsKeyLoaded then
  begin
    button := Sender as TColorSpeedButtonCS;
    //if (button.Down) then
    if (button.HelpKeyword <> 'DOWN') then
    begin
      ResetMacroCoTriggers;

      aKey := GetCoTriggerKey(Sender);
      if (aKey <> nil) then
      begin
        activeKbKey.ActiveMacro.CoTrigger1 := aKey.CopyKey;
        MacroModified := true;
      end;
      ActivateCoTrigger(button);
    end
    else
    begin
      ResetCoTrigger(button);
      aKey := GetCoTriggerKey(Sender);
      if (aKey <> nil) then
        RemoveCoTrigger(aKey.Key);
    end;
  end;
end;

procedure TFormMainAdv360.imgProfileClick(Sender: TObject);
begin
  //if (pnlSelectProfile.Visible) then
  //begin
  //  ResetProfileMenu;
  //end
  //else
  //begin
  //  profileMode := pmSelect;
  //  pnlSelectProfile.Left := imgProfile.Left;
  //  pnlSelectProfile.Width := imgProfile.Width;
  //  pnlSelectProfile.Top := imgProfile.Top + imgProfile.Height;
  //  pnlSelectProfile.Visible := true;
  //  //SetMousePosition(pnlSelectProfile.Left + 50, pnlSelectProfile.Top + 10);
  //  LoadButtonImage(sender, imgListProfileHover, currentProfileNumber);
  //end;
end;

procedure TFormMainAdv360.lbProfileMouseLeave(Sender: TObject);
begin
  //if (not MouseInControl(lbProfile)) then
     ResetProfileMenu;
end;

procedure TFormMainAdv360.memoMacroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  key := 0;
end;

function TFormMainAdv360.MouseInControl(oControl: TControl): boolean;
var
  pt: TPoint;
begin
  result := false;
  pt := ScreenToClient(Mouse.CursorPos);

  result := (pt.x >= oControl.Left) and
     (pt.x <= (oControl.Left + oControl.Width)) and
     (pt.y >= oControl.Top) and
     (pt.y <= (oControl.Top + oControl.Height));
end;

procedure TFormMainAdv360.btnExportClick(Sender: TObject);
begin
  ShowExport(currentLayoutFile, currentLedFile);
  (sender as TColorSpeedButtonCS).Down := false;
  SetHovered(sender, false, true);
end;

procedure TFormMainAdv360.btnHelpClick(Sender: TObject);
begin
  NeedInput := true;
  Application.CreateForm(TFormAbout, FormAbout);
  FormAbout.SetFirmwareVersion(fileService.FirmwareVersionKBD, fileService.FirmwareVersionLED);
  FormAbout.ShowModal;
  (sender as TColorSpeedButtonCS).Down := false;
  SetHovered(sender, false, true);
  NeedInput := false;
end;

procedure TFormMainAdv360.btnImportClick(Sender: TObject);
var
  errorMsg: string;
  fileContent: TStringList;
  iFileSize: integer;
begin
  if (OpenDialog.Execute) then
  begin
    try
      iFileSize := FileSize(OpenDialog.FileName);
      if (iFileSize / 1024) <= MAX_IMPORT_SIZE then
      begin
        fileContent := TStringList.Create;
        errorMsg := fileService.LoadFile(OpenDialog.FileName, fileContent, false);

        if (errorMsg = '') then
        begin
          if (keyService.IsLedFile(fileContent)) then
          begin
            LoadLedFile(OpenDialog.FileName, fileContent);
            SetSaveState(ssModified);
            if (keyService.ConfigMode <> CONFIG_LIGHTING) then
              SetConfigMode(CONFIG_LIGHTING);
          end
          else if (keyService.IsLayoutFile(fileContent)) then
          begin
            LoadKeyboardLayout(OpenDialog.FileName, fileContent);
            SetSaveState(ssModified);
            if (keyService.ConfigMode <> CONFIG_LAYOUT) then
              SetConfigMode(CONFIG_LAYOUT);
          end
          else
            ShowDialog('Import File', 'File not recognized', mtError, [mbOK], DEFAULT_DIAG_HEIGHT_RGB);
        end
        else
        begin
          ShowDialog('Import File', errorMsg, mtError, [mbOK], DEFAULT_DIAG_HEIGHT_RGB);
        end;
      end
      else
        ShowDialog('Import File', 'File size must not exceed ' + IntToStr(MAX_IMPORT_SIZE) + ' KB', mtError, [mbOK], DEFAULT_DIAG_HEIGHT_RGB);
    finally
      if (fileContent <> nil) then
        FreeAndNil(fileContent);
    end;
  end;
  (sender as TColorSpeedButtonCS).Down := false;
  SetHovered(sender, false, true);
end;

procedure TFormMainAdv360.continueClick(Sender: TObject);
begin
  CloseDialog(mrOk);
end;

procedure TFormMainAdv360.KeyButtonClick(Sender: TObject);
begin
  SetActiveKeyButton(sender as TLabelBox);
end;

procedure TFormMainAdv360.KeyButtonMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

function TFormMainAdv360.EditingMacro(showWarning: boolean = false): boolean;
begin
  result := pnlMacro.Visible;
  if (result and showWarning) then
    ShowDialog('Macro', 'Please close Macro Editor before proceeding', mtWarning, [mbOk]);
end;

procedure TFormMainAdv360.SetKeyButtonText(keybutton: TLabelBox; btnText: string);
begin
  keyButton.Caption := btnText;
end;

function TFormMainAdv360.ValidateBeforeDone: boolean;
var
  errorMsg: string;
  errorTitle: string;
  customBtns: TCustomButtons;
  isValid: boolean;
begin
  isValid := keyService.ValidateMacros(activeKbKey, errorMsg, errorTitle);

  if isValid then
  begin
    RefreshRemapInfo;

    if (MacroModified) then
    begin
      if (macroCount > maxMacros) then
      begin
        //Allow clicking done but not saving
        //isValid := false;
        createCustomButton(customBtns, 'OK', 150, nil, bkOK);
        ShowDialog('Macro Capacity Reached', 'Only ' + IntToStr(maxMacros) + ' macros can be saved to a layout.',
          mtWarning, [], DEFAULT_DIAG_HEIGHT_RGB, customBtns);
      end
      else
      begin
        if (totalKeystrokes > maxKeystrokes) then
        begin
          isValid := false;
          ShowDialog('Macro Limit Reached', 'You have reached the macro limit for Profile ' + IntToStr(currentProfileNumber) + '. To proceed, please delete an unused macro from this layout or create a new layout.',
            mtError, [mbOk], DEFAULT_DIAG_HEIGHT_RGB, customBtns);
        end;
      end;
    end;
  end
  else
  begin
    ShowDialog(errorTitle, errorMsg, mtError, [mbOk], DEFAULT_DIAG_HEIGHT_RGB, customBtns);
  end;

  result := isValid;
end;

function TFormMainAdv360.AcceptMacro: boolean;
begin
  result := true;
  KeyModified := false;
  MacroModified := false;
  SetWindowsCombo(false);
  if (IsKeyLoaded) then
  begin
    if ValidateBeforeDone then
    begin
      SetSaveState(ssModified);
      activeKbKey.IsMacro := (activeKbKey.Macro1.Count > 0) or (activeKbKey.Macro2.Count > 0) or (activeKbKey.Macro3.Count > 0);
      UpdateKeyButtonKey(activeKbKey, activeKeyBtn);
      SetActiveKeyButton(nil);
    end
    else
      result := false;
  end;
  RefreshRemapInfo;
  SetHovered(btnDoneMacro, false, true);
end;

procedure TFormMainAdv360.CancelMacro;
begin
  KeyModified := false;
  MacroModified := false;
  SetWindowsCombo(false);
  if (IsKeyLoaded) then
  begin
    keyService.RestoreMacro(activeKbKey); //Returns to previous values
    activeKbKey.IsMacro := (activeKbKey.Macro1.Count > 0) or (activeKbKey.Macro2.Count > 0) or (activeKbKey.Macro3.Count > 0) ;
    UpdateKeyButtonKey(activeKbKey, activeKeyBtn);
    SetActiveKeyButton(nil);
  end;
  RefreshRemapInfo;
  SetHovered(btnCancelMacro, false, true);
end;

function TFormMainAdv360.GetKeyButtonUnderMouse(btnList: TObjectList; x: integer; y:integer): TLabelBox;
var
  i: integer;
  keyButton: TLabelBox;
  found: boolean;
begin
  i := 0;
  result := nil;
  found := false;
  While (i < btnList.Count) and (not found) do
  begin
    if (btnList[i] is TLabelBox) then
    begin
      keyButton := (btnList[i] as TLabelBox);
      if (x >= keyButton.Left) and (x <= (keyButton.Left + keyButton.Width)) and
        (y >= keyButton.Top) and (y <= (keyButton.Top + keyButton.Height)) then
      begin
        result := keyButton;
        found := true;
      end;
    end;
    inc(i);
  end;
end;

procedure TFormMainAdv360.btnCloseMacroClick(Sender: TObject);
begin
  CloseMacroEditor;
end;

procedure TFormMainAdv360.btnMouseClicksMacroClick(Sender: TObject);
var
  pt: TPoint;
begin
  pt.x := Mouse.CursorPos.x;
  pt.y := Mouse.CursorPos.y;
  popMouseClicks.PopUp(pt.x, pt.y);
  SetHovered(sender, false, true);
end;

procedure TFormMainAdv360.btnCommonShortcutsClick(Sender: TObject);
var
  pt: TPoint;
begin
  pt.x := Mouse.CursorPos.x;
  pt.y := Mouse.CursorPos.y;
  popCommonShortcuts.PopUp(pt.x, pt.y);
  SetHovered(sender, false, true);
end;

procedure TFormMainAdv360.btnDiagnosticClick(Sender: TObject);
begin
  ShowDiagnostics;
  (sender as TColorSpeedButtonCS).Down := false;
  SetHovered(sender, false, true);
//var
//  fileContent: TStringList;
//  errorMsg: string;
//begin
//  try
//    Cursor := crHourGlass;
//    fileContent := fileService.GetDiagnosticInfo;
//
//    fileService.SaveFile(GetDesktopDirectory + '\diagnostic.txt', fileContent, true, errorMsg);
//
//    SetHovered(sender, false, true);
//  finally
//    Cursor := crDefault;
//
//    if (fileContent <> nil) then
//      FreeAndNil(fileContent);
//  end;
end;

procedure TFormMainAdv360.btnDoneClick(Sender: TObject);
begin
  DoneKey;
  SetHovered(sender, false, true);
end;

function TFormMainAdv360.DoneKey: boolean;
begin
  result := false;
  if IsKeyLoaded then
  begin
    if ValidateBeforeDone then
    begin
      result := true;
      KeyModified := false;
      MacroModified := false;
      SetSaveState(ssModified);
      activeKbKey.IsMacro := (activeKbKey.Macro1.Count > 0) or (activeKbKey.Macro2.Count > 0) or (activeKbKey.Macro3.Count > 0);
      //SetMacroMode(false);
      SetActiveKeyButton(nil);
      RefreshRemapInfo;
    end;
  end;
end;

procedure TFormMainAdv360.btnDoneMacroClick(Sender: TObject);
begin
  AcceptMacro;
end;

procedure TFormMainAdv360.btnFirmwareClick(Sender: TObject);
begin
  ShowFirmware(GActiveDevice);
  (sender as TColorSpeedButtonCS).Down := false;
  SetHovered(sender, false, true);
end;

procedure TFormMainAdv360.btnCancelMacroClick(Sender: TObject);
begin
  CancelMacro;
end;

procedure TFormMainAdv360.btnCancelClick(Sender: TObject);
begin
  if IsKeyLoaded then
  begin
    KeyModified := false;
    MacroModified := false;
    keyService.RestoreMacro(activeKbKey); //Returns to previous values for Macro
    keyService.RestoreKbKey(activeKbKey); //Returns to previous values for Key
    SetActiveKeyButton(nil);
    RefreshRemapInfo;
  end;
  SetHovered(sender, false, true);
end;

procedure TFormMainAdv360.btnResetAllClick(Sender: TObject);
var
  sMessage: string;
  i: integer;
begin
  if (keyService.ConfigMode = CONFIG_LAYOUT) then
  begin
    if ShowDialog('Reset layout',
          'Do you want to reset the current Layout?' + #10 + 'All remapped keys and stored macros in both layers will be lost.',
          mtConfirmation, [mbYes, mbNo], DEFAULT_DIAG_HEIGHT_RGB) = mrYes then
    begin
      CancelMacro;
      keyService.ResetLayout;
      LoadLayer(keyService.ActiveLayer);
      SetActiveKeyButton(nil);
      RefreshRemapInfo;
      SetSaveState(ssModified);
    end;
  end
  else if (keyService.ConfigMode in [CONFIG_LIGHTING]) and (keyService.LedMode in [lmFreestyle, lmBreathe]) then
  begin
    sMessage := 'Do you want to reset the current Lighting profile?' + #10 + 'All assigned colors will be lost.';
    if (keyService.LedMode = lmFreestyle) then
      sMessage := 'Do you want to erase color assignments for each key';
    if ShowDialog('Reset Lighting', sMessage,
          mtConfirmation, [mbYes, mbNo], DEFAULT_DIAG_HEIGHT_RGB) = mrYes then
    begin
      keyService.SetAllIndColor(clBlack);
      keyService.Ind1FnLayer := -1;
      keyService.Ind2FnLayer := -1;
      keyService.Ind3FnLayer := -1;
      keyService.Ind4FnLayer := -1;
      keyService.Ind5FnLayer := -1;
      keyService.Ind6FnLayer := -1;
      keyService.Ind1FnToken := ifDisable;
      keyService.Ind2FnToken := ifDisable;
      keyService.Ind3FnToken := ifDisable;
      keyService.Ind4FnToken := ifDisable;
      keyService.Ind5FnToken := ifDisable;
      keyService.Ind6FnToken := ifDisable;
      ReloadKeyButtonsColor(true);
      SetSaveState(ssModified);
    end;
  end;
  SetHovered(sender, false, true);
end;

procedure TFormMainAdv360.btnTimingDelaysClick(Sender: TObject);
var
  timingDelay: integer;
begin
  try
    ResetPopupMenuMacro;
    NeedInput := True;

    if (IsKeyLoaded) then
    begin
      timingDelay := ShowTimingDelays;
      if (timingDelay = 0) then
      begin
        SetModifiedKey(VK_RAND_DELAY, '', true);
      end
      else if (timingDelay >= MIN_TIMING_DELAY) and (timingDelay <= MAX_TIMING_DELAY) then
      begin
        SetModifiedKey(VK_MIN_DELAY + (timingDelay - 1), '', true);
      end;
    end;
  finally
    NeedInput := False;
  end;
  SetHovered(sender, false, true);
end;

procedure TFormMainAdv360.btnWindowsCombosClick(Sender: TObject);
begin
  ResetPopupMenuMacro;
  if (IsKeyLoaded) then
    SetWindowsCombo(not WindowsComboOn);
end;

procedure TFormMainAdv360.chkGlobalSpeedClick(Sender: TObject);
begin
  if (not loadingMacro) and IsKeyLoaded then
  begin
    activeKbKey.ActiveMacro.MacroSpeed := -1;
    MacroModified := true;
    sliderMacroSpeedChange(sender);
  end;
end;

procedure TFormMainAdv360.chkRepeatMultiplayClick(Sender: TObject);
begin
  if (not loadingMacro) and IsKeyLoaded then
  begin
    activeKbKey.ActiveMacro.MacroRptFreq := -1;
    MacroModified := true;
    sliderMultiplayChange(sender);
  end;
end;

procedure TFormMainAdv360.MenuDrawItem(Sender: TObject; ACanvas: TCanvas;
    ARect: TRect; AState: TOwnerDrawState);
var
  mnu: TMenuItem;
begin
  mnu := (sender as TMenuItem);
  aCanvas.brush.color := backColor;
  acanvas.brush.style := bsSolid;
  if (odSelected in AState) then
    aCanvas.font.color := blueColor
  else
    aCanvas.font.color := fontColor;
  aCanvas.Font.Name := self.Font.Name;

    aCanvas.Font.Size := 13;
  aCanvas.fillrect( aRect );
  acanvas.textrect( aRect, arect.left+4, arect.top+2, mnu.caption );
end;

procedure TFormMainAdv360.btnResetKeyClick(Sender: TObject);
var
  response: integer;
begin
  if IsKeyLoaded then
  begin
    if (ShowNotification(fileService.AppSettings.ResetKeyMsg)) then
    begin
      response := ShowDialog('Reset current key',
        'Do you want to reset the current Key?' + #10 + 'The remapped key action and any stored macros will be lost.',
        mtConfirmation, [mbYes, mbNo], DEFAULT_DIAG_HEIGHT_RGB, nil, 'Hide this notification?');
      if (response >= DISABLE_NOTIF) then
      begin
        CancelMacro;
        fileService.SetResetKeyMsg(true);
        fileService.SaveAppSettings;
      end;
    end
    else
      response := mrYes;

    if (response = mrYes) or (response = mrYes + DISABLE_NOTIF) then
    begin
      activeKbKey.ResetKey;
      UpdateKeyButtonKey(activeKbKey, activeKeyBtn);
      SetSaveState(ssModified);
      SetActiveKeyButton(nil);
    end;
    RefreshRemapInfo;
  end
  else
    ShowDialog('Reset key', 'You must select a key to reset', mtWarning, [mbOK], DEFAULT_DIAG_HEIGHT_RGB);

  SetHovered(sender, false, true);
end;

procedure TFormMainAdv360.sliderMultiplayChange(Sender: TObject);
var
  value: integer;
  aColor:TColor;
begin
  value := Round(sliderMultiplay.Position);
  if (value = -1) or (chkRepeatMultiplay.Checked) then
  begin
    lblMultiplay.Caption := 'R';
    aColor := KINESIS_DARK_GRAY_ADV360;
  end
  else
  begin
    lblMultiplay.Caption := IntToStr(value);
    aColor := KINESIS_MED_GRAY_RGB;
  end;
  sliderMultiplay.Knob.Color := aColor;
  sliderMultiplay.ProgressColor := aColor;
  sliderMultiplay.Scale.TickColor := aColor;
end;

procedure TFormMainAdv360.sliderMultiplayMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  sliderPos: Real;
  value: integer;
begin
  if (not loadingMacro) and IsKeyLoaded then
  begin
    chkRepeatMultiplay.Checked := false;
    sliderPos := sliderMultiplay.Position;
    if (Frac(sliderPos) >= 0) then
    begin
      value := Round(sliderPos);
      sliderMultiplay.Position := value;
    end;

    if (not loadingMacro) then
    begin
      activeKbKey.ActiveMacro.MacroRptFreq := Round(sliderMultiplay.Position);
      MacroModified := true;
    end;
  end;
end;

procedure TFormMainAdv360.sliderMacroSpeedChange(Sender: TObject);
var
  value: integer;
  aColor: TColor;
begin
  value := Round(sliderMacroSpeed.Position);
  if (value = -1) or (chkGlobalSpeed.Checked) then
  begin
    lblPlaybackSpeed.Caption := 'G';
    aColor := KINESIS_DARK_GRAY_ADV360;
  end
  else
  begin
    lblPlaybackSpeed.Caption := IntToStr(value);
    aColor := KINESIS_MED_GRAY_RGB;
  end;
  sliderMacroSpeed.Knob.Color := aColor;
  sliderMacroSpeed.ProgressColor := aColor;
  sliderMacroSpeed.Scale.TickColor := aColor;
end;

procedure TFormMainAdv360.sliderMacroSpeedMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  sliderPos: Real;
  value: integer;
begin
  if (not loadingMacro) and IsKeyLoaded then
  begin
    chkGlobalSpeed.Checked := false;
    sliderPos := sliderMacroSpeed.Position;
    if (Frac(sliderPos) >= 0) then
    begin
      value := Round(sliderPos);
      sliderMacroSpeed.Position := value;
    end;

    if (not loadingMacro) then
    begin
      activeKbKey.ActiveMacro.MacroSpeed := Round(sliderMacroSpeed.Position);
      MacroModified := true;
    end;
  end;
end;

procedure TFormMainAdv360.rgbKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  iColor: integer;
begin
  if (key = VK_RETURN) or (key = VK_TAB) then
  begin
    if (eRed.Focused) then
      eGreen.SetFocus
    else if (eGreen.Focused) then
      eBlue.SetFocus
    else if (eBlue.Focused) then
      eHTML.SetFocus
    else if (eRedKp.Focused) then
      eGreenKp.SetFocus
    else if (eGreenKp.Focused) then
      eBlueKp.SetFocus
    else if (eBlueKp.Focused) then
      eHTMLKp.SetFocus;
    Key:= 0;
  end
  else if (Key = VK_UP) or (Key = VK_DOWN) then
  begin
    iColor := ConvertToInt((Sender as TEdit).Text, 0);
    if (Key = VK_UP) then
    begin
      if (iColor < 255) then
        inc(iColor)
      else
        iColor := 255;
    end
    else if (Key = VK_DOWN) then
    begin
      if (iColor > 0) then
        dec(iColor)
      else
        iColor := 0;
    end;
    (Sender as TEdit).Text := IntToStr(iColor);
  end;
end;

procedure TFormMainAdv360.rgbKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
  );
var
  edit: TEdit;
begin
  if (Key = VK_UP) or (Key = VK_DOWN) then
  begin
    edit := (Sender as TEdit);
    if (edit = eRed) or (edit = eGreen) or (edit = eBlue) then
      GetRBGEditColor(LAYER_TOP_360)
    else if (edit = eRedKp) or (edit = eGreenKp) or (edit = eBlueKp) then
      GetRBGEditColor(LAYER_KEYPAD_360);
  end;
end;

procedure TFormMainAdv360.GetRBGEditColor(layerIdx: integer);
var
  iRed: integer;
  iGreen: integer;
  iBlue: integer;
begin
  iRed := ConvertToInt(eRed.Text, 0);
  iGreen := ConvertToInt(eGreen.Text, 0);
  iBlue := ConvertToInt(eBlue.Text, 0);

  if (iRed > 255) then
    iRed := 255;
  if (iGreen > 255) then
    iGreen := 255;
  if (iBlue > 255) then
    iBlue := 255;

  eRed.Text := IntToStr(iRed);
  eGreen.Text := IntToStr(iGreen);
  eBlue.Text := IntToStr(iBlue);

  ColorChange(RGB(iRed, iGreen, iBlue), layerIdx);
  AfterColorChange;
end;

procedure TFormMainAdv360.ImageMenuClick(Sender: TObject);
begin

end;

procedure TFormMainAdv360.rgbExit(Sender: TObject);
var
  edit: TEdit;
begin
  edit := (Sender as TEdit);
  if (edit = eRed) or (edit = eGreen) or (edit = eBlue) then
    GetRBGEditColor(LAYER_TOP_360)
  else if (edit = eRedKp) or (edit = eGreenKp) or (edit = eBlueKp) then
    GetRBGEditColor(LAYER_KEYPAD_360)  ;
end;

procedure TFormMainAdv360.eHTMLExit(Sender: TObject);
var
  sHtml: string;
  edit: TEdit;
begin
  edit := (Sender as TEdit);
  sHtml := edit.Text;
  if (Copy(edit.Text, 1, 1) = '#') then
    sHtml := Copy(edit.Text, 2, Length(edit.Text));
  if (Length(sHtml) = 6) then
  begin
    if (Sender = eHTML) then
    begin
      ColorChange(GetColorHTML(sHtml), LAYER_TOP_360);
      AfterColorChange;
    end
    else if (Sender = eHTMLKp) then
    begin
      ColorChange(GetColorHTML(sHtml), LAYER_KEYPAD_360);
      AfterColorChange;
    end;
  end
  else
    edit.Text := GetHTMLColor(ringPickerTop.SelectedColor);
end;

procedure TFormMainAdv360.eHTMLKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) or (key = VK_TAB) then
  begin
    if (sender = eHTML) then
      eRed.SetFocus
    else if (sender = eHTMLKp) then
      eRedKp.SetFocus;
    Key:= 0;
  end;
end;

procedure TFormMainAdv360.FormResize(Sender: TObject);
var
  formWidth, formHeight: integer;
begin
  formWidth := self.Width;
  formHeight := self.Height;
  imgBackground.Width := formWidth;
  imgBackground.Height := formHeight;

  //jm old logo
  //imgLogoFSEdge.Left := (pnlTop.Width - logoSize) div 2;
  //imgLogoFSEdge2.Left := imgLogoFSEdge.Left + logoSize - imgLogoFSEdge2.Width;
  //lblVDriveOk.Left := imgLogoFSEdge2.Left + imgLogoFSEdge2.Width + 10;
  //lblVDriveError.Left := lblVDriveOk.Left;
end;

procedure TFormMainAdv360.imgKeyboardLightingMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

end;

procedure TFormMainAdv360.btnMacroClick(Sender: TObject);
begin
  if (EditingMacro) then
    CloseMacroEditor
  else
    OpenMacroEditor;
end;

procedure TFormMainAdv360.btnMultimediaMacroClick(Sender: TObject);
var
  pt: TPoint;
begin
  pt.x := Mouse.CursorPos.x;
  pt.y := Mouse.CursorPos.y;
  popMultimediaMacro.PopUp(pt.x, pt.y);
  SetHovered(sender, false, true);
end;

procedure TFormMainAdv360.btnTapAndHoldClick(Sender: TObject);
begin
  OpenTapAndHold;
end;

procedure TFormMainAdv360.btnLeftMenuClick(Sender: TObject);
//var
  //aButton: TColorSpeedButtonCS;
begin
  //aButton := (sender as TColorSpeedButtonCS);
  //todo jm
end;

procedure TFormMainAdv360.btnMacModifiersClick(Sender: TObject);
begin
  SetMacModifiersHotkeys;
end;

procedure TFormMainAdv360.btnDisableKeyClick(Sender: TObject);
begin
  if (IsKeyLoaded) then
    SetModifiedKey(VK_NULL, '', false, false, true, true);
end;

procedure TFormMainAdv360.btnEjectClick(Sender: TObject);
begin
  EjectDevice(GActiveDevice);
  (sender as TColorSpeedButtonCS).Down := false;
  SetHovered(sender, false, true);
end;

procedure TFormMainAdv360.btnFunctionMacroClick(Sender: TObject);
var
  pt: TPoint;
begin
  pt.x := Mouse.CursorPos.x;
  pt.y := Mouse.CursorPos.y;
  popFunctionKeysMacro.PopUp(pt.x, pt.y);
  SetHovered(sender, false, true);
end;

procedure TFormMainAdv360.btnBacklightClick(Sender: TObject);
begin
  if (IsKeyLoaded) then
    SetModifiedKey(VK_LED, '', false, false, true, true);
end;

procedure TFormMainAdv360.lblGlobalSpeedClick(Sender: TObject);
begin
  chkGlobalSpeed.Checked := not chkGlobalSpeed.Checked;
end;

procedure TFormMainAdv360.lblRepeatMultiplayClick(Sender: TObject);
begin
  chkRepeatMultiplay.Checked := not chkRepeatMultiplay.Checked;
end;

procedure TFormMainAdv360.lbMenuMacroMouseLeave(Sender: TObject);
begin
  ResetPopupMenuMacro;
end;

procedure TFormMainAdv360.lbMenuMouseLeave(Sender: TObject);
begin
  ResetPopupMenu;
end;

procedure TFormMainAdv360.OpenTapAndHold;
var
  customBtns: TCustomButtons;
  keyOtherLayer: TKBKey;
  otherLayer: TKBLayer;
begin
  if (IsKeyLoaded) then
  begin
    //Check key other layer
    if (keyService.ActiveLayer.LayerIndex = LAYER_TOP_360) then
      otherLayer := keyService.GetLayer(LAYER_KEYPAD_360)
    else
      otherLayer := keyService.GetLayer(LAYER_TOP_360);
    keyOtherLayer := keyService.GetKbKeyByIndex(otherLayer, activeKbKey.Index);

    if (activeKbKey.IsMacro) then
    begin
      ShowDialog('Tap and Hold', 'You cannot assign a Tap and Hold Action to a macro trigger key.',
        mtWarning, [mbOk], DEFAULT_DIAG_HEIGHT_RGB);
    end
    else
    begin
      if (ShowTapAndHold(keyService, activeKbKey.TapAction, activeKbKey.HoldAction, activeKbKey.TimingDelay)) then
      begin
        KeyModified := true;
        SetSaveState(ssModified);
        keyService.SetTapAndHold(activeKbKey, FormTapAndHold.tapAction, FormTapAndHold.holdAction, FormTapAndHold.timingDelay);
        UpdateKeyButtonKey(activeKbKey, activeKeyBtn);
        RefreshRemapInfo;
      end;
    end;
  end;
end;

procedure TFormMainAdv360.EnablePaintImages(value: boolean);
begin
  //Enable/Disable visual effects on controls
  {$ifdef Win32}
  SendMessage(imgBackground.Canvas.Handle, WM_SETREDRAW, WPARAM(value), 0);
  SendMessage(imgKeyboardLayout.Canvas.Handle, WM_SETREDRAW, WPARAM(value), 0);
  SendMessage(imgKeyboardLighting.Canvas.Handle, WM_SETREDRAW, WPARAM(value), 0);
  {$endif}
  {$ifdef Darwin}
  //jm todo SendMessage(memoMacro.Handle, LM_SETREDRAW, WPARAM(False), 0);
  {$endif}
end;

procedure TFormMainAdv360.ResetPopupMenu;
begin
  pnlMenu.Visible := false;
  currentPopupMenu := nil;
end;

procedure TFormMainAdv360.ResetPopupMenuMacro;
begin
  pnlMenuMacro.Visible := false;
end;

procedure TFormMainAdv360.ResetSingleKey;
begin
  //btnLEDControl.Down := false;
  //btnDisableKey.Down := false;
  //lblLedControl.Font.Color := KINESIS_FONT_COLOR_RGB;
  //lblDisableKey.Font.Color := KINESIS_FONT_COLOR_RGB;
end;

procedure TFormMainAdv360.ResetProfileMenu;
begin
  profileMode := pmNone;
  pnlSelectProfile.Visible := false;
  //LoadButtonImage(imgProfile, imgListProfileDefault, currentProfileNumber);
  btnProfile.Caption := 'PROFILE ' + IntToStr(currentProfileNumber) + ' ';
  SetHovered(btnSaveAs, false, true);
  btnSaveAs.Down := false;
end;

procedure TFormMainAdv360.miAddCustColorClick(Sender: TObject);
var
  custColor: TColor;
begin
  custColor := colorPreview.Color;

  if (custColor1.Color = DEFAULT_CUST_COLOR) then
    custColor1.Color := custColor
  else if (custColor2.Color = DEFAULT_CUST_COLOR) then
    custColor2.Color := custColor
  else if (custColor3.Color = DEFAULT_CUST_COLOR) then
    custColor3.Color := custColor
  else if (custColor4.Color = DEFAULT_CUST_COLOR) then
    custColor4.Color := custColor
  else if (custColor5.Color = DEFAULT_CUST_COLOR) then
    custColor5.Color := custColor
  else if (custColor6.Color = DEFAULT_CUST_COLOR) then
    custColor6.Color := custColor
  else if (custColor7.Color = DEFAULT_CUST_COLOR) then
    custColor7.Color := custColor
  else if (custColor8.Color = DEFAULT_CUST_COLOR) then
    custColor8.Color := custColor
  else if (custColor9.Color = DEFAULT_CUST_COLOR) then
    custColor9.Color := custColor
  else if (custColor10.Color = DEFAULT_CUST_COLOR) then
    custColor10.Color := custColor
  else if (custColor11.Color = DEFAULT_CUST_COLOR) then
    custColor11.Color := custColor
  else if (custColor12.Color = DEFAULT_CUST_COLOR) then
    custColor12.Color := custColor;
end;

procedure TFormMainAdv360.colorPreMixedClick(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ColorChange((Sender as TmbColorPreview).Color, LAYER_TOP_360);
  AfterColorChange;
end;

procedure TFormMainAdv360.colorPreMixedKpClick(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ColorChange((Sender as TmbColorPreview).Color, LAYER_KEYPAD_360);
  AfterColorChange;
end;

procedure TFormMainAdv360.custColorClick(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  custColor: TColor;
begin
  custColor := (Sender as TmbColorPreview).Color;
  if (custColor <> clNone) then
  begin
    ColorChange(custColor, LAYER_TOP_360);
    AfterColorChange;
  end;
end;

procedure TFormMainAdv360.custColorKpClick(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  custColor: TColor;
begin
  custColor := (Sender as TmbColorPreview).Color;
  if (custColor <> clNone) then
  begin
    ColorChange(custColor, LAYER_KEYPAD_360);
    AfterColorChange;
  end;
end;

procedure TFormMainAdv360.custColorChange(Sender: TObject);
begin
  if (not loadingSettings) then
  begin
    fileService.SetCustomColor(custColor1.Color, 1);
    fileService.SetCustomColor(custColor2.Color, 2);
    fileService.SetCustomColor(custColor3.Color, 3);
    fileService.SetCustomColor(custColor4.Color, 4);
    fileService.SetCustomColor(custColor5.Color, 5);
    fileService.SetCustomColor(custColor6.Color, 6);
    fileService.SetCustomColor(custColor7.Color, 7);
    fileService.SetCustomColor(custColor8.Color, 8);
    fileService.SetCustomColor(custColor9.Color, 9);
    fileService.SetCustomColor(custColor10.Color, 10);
    fileService.SetCustomColor(custColor11.Color, 11);
    fileService.SetCustomColor(custColor12.Color, 12);
    fileService.SaveAppSettings;
  end;
end;

procedure TFormMainAdv360.colorPreviewMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then   {check if left mouse button was pressed}
    (Sender as TmbColorPreview).BeginDrag(true);  {starting the drag operation}
end;

procedure TFormMainAdv360.custColorDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  if (Source is TmbColorPreview) then
    (Sender as TmbColorPreview).Color := (Source as TmbColorPreview).Color;
end;

procedure TFormMainAdv360.custColorDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  if (Source is TmbColorPreview) then
    Accept := true;
end;

procedure TFormMainAdv360.ringPickerKpChange(Sender: TObject);
begin

end;

procedure TFormMainAdv360.ringPickerChange(Sender: TObject);
var
  layerIdx: integer;
begin
  if (not loadingColor) then
  begin
    layerIdx := -1;
    if (sender = ringPickerTop) then
       layerIdx := LAYER_TOP_360
    else if (sender = ringPickerKp) then
       layerIdx := LAYER_KEYPAD_360;

    ColorChange(ringPickerTop.SelectedColor, layerIdx);
    AfterColorChange;
  end;
end;

procedure TFormMainAdv360.ColorChange(newColor: TColor; layerIdx: integer);
begin
  try
    loadingColor := true;

    if (layerIdx = LAYER_TOP_360) then
    begin
      ringPickerTop.SelectedColor := newColor;
      colorPreview.Color := newColor;
      eRed.Text := IntToStr(GetRValue(newColor));
      eGreen.Text := IntToStr(GetGValue(newColor));
      eBlue.Text := IntToStr(GetBValue(newColor));
      eHTML.Text := GetHTMLColor(newColor);
      if (not loadingSettings) and (not loadingLedSettings) then
      begin
        keyService.Ind1Color := newColor;
        SetSaveState(ssModified);
      end;
    end
    else if (layerIdx = LAYER_KEYPAD_360) then
    begin
      ringPickerKp.SelectedColor := newColor;
      colorPreviewKp.Color := newColor;
      eRedKp.Text := IntToStr(GetRValue(newColor));
      eGreenKp.Text := IntToStr(GetGValue(newColor));
      eBlueKp.Text := IntToStr(GetBValue(newColor));
      eHTMLKp.Text := GetHTMLColor(newColor);
      if (not loadingSettings) and (not loadingLedSettings) then
      begin
        keyService.Ind2Color := newColor;
        SetSaveState(ssModified);
      end;
    end;
  finally
    loadingColor := false;
  end;
end;

procedure TFormMainAdv360.AfterColorChange;
begin
  ReloadKeyButtonsColor;
end;

procedure TFormMainAdv360.ChangeActiveLayer(layerIdx: integer);
begin
  if (not resetLayer) then
  begin
    if (CheckSaveKey) then
    begin
      SetActiveLayer(layerIdx);
    end
    else
    begin
      resetLayer := true;
    end;
  end;
  resetLayer := false;
end;

procedure TFormMainAdv360.TopMenuClick(Sender: TObject);
begin
  if (sender = pnlLayoutBtn) and (keyService.ConfigMode <> CONFIG_LAYOUT) then
  begin
    SetConfigMode(CONFIG_LAYOUT);
  end
  else if (sender = pnlLightingBtn) and (keyService.ConfigMode <> CONFIG_LIGHTING) then
  begin
    SetConfigMode(CONFIG_LIGHTING);
  end;
end;

function TFormMainAdv360.GetMenuActionByType(actionType: TMenuActionType): TMenuAction;
var
  i:integer;
  menuAction: TMenuAction;
begin
  menuAction := nil;

  for i:=0 to menuActionList.Count - 1 do
  begin
    if ((menuActionList.Items[i] as TMenuAction).ActionType = actionType) then
    begin
      menuAction := (menuActionList.Items[i] as TMenuAction);
      Break;
    end;
  end;

  result := menuAction;
end;

function TFormMainAdv360.GetMenuActionByButton(buttonName: string): TMenuAction;
var
  i:integer;
  menuAction: TMenuAction;
begin
  menuAction := nil;

  for i:=0 to menuActionList.Count - 1 do
  begin
    if ((menuActionList.Items[i] as TMenuAction).ActionButton.Name = buttonName) then
    begin
      menuAction := (menuActionList.Items[i] as TMenuAction);
      Break;
    end;
  end;

  result := menuAction;
end;

procedure TFormMainAdv360.ResetAllMenuAction;
var
  i:integer;
  menuAction: TMenuAction;
begin
  menuAction := nil;

  for i:=0 to menuActionList.Count - 1 do
  begin
    menuAction := (menuActionList.Items[i] as TMenuAction);
    menuAction.IsDown := false;

    if (menuAction.ActionImage <> nil) then
      menuAction.ActionImage.Picture.Clear;
    if (menuAction.ActionLabel <> nil) and (menuAction.IsEnabled) then
      menuAction.ActionLabel.Font.Color := KINESIS_FONT_COLOR_RGB
    else if (menuAction.ActionLabel <> nil) then
      menuAction.ActionLabel.Font.Color := KINESIS_MED_GRAY_RGB;
  end;
end;

procedure TFormMainAdv360.SetCurrentMenuAction(aType: TMenuActionType; aButton: TColorSpeedButtonCS);
var
  aMenuAction: TMenuAction;
  customBtns: TCustomButtons;
begin
  if (aType <> maNone) then
    aMenuAction := GetMenuActionByType(aType)
  else if (aButton <> nil) then
    aMenuAction := GetMenuActionByButton(aButton.Name)
  else
    aMenuAction := nil;

  if (aMenuAction <> currentMenuAction) then
  begin
    if (aMenuAction <> nil) and (not aMenuAction.IsEnabled) then
    begin
      createCustomButton(customBtns, 'OK', 100, nil, bkOK);
      ShowDialog(aMenuAction.ActionButton.Caption, 'To utilize ' + aMenuAction.ActionLabel.Caption + ', please download and install the latest firmware.',
          mtWarning, [], DEFAULT_DIAG_HEIGHT_RGB, customBtns);
    end
    else
    begin
      ResetAllMenuAction;
      ResetPopupMenu;
      ResetPopupMenuMacro;
      ResetSingleKey;

      currentMenuAction := aMenuAction;
      if (currentMenuAction <> nil) and (currentMenuAction.StayDown) then
      begin
        currentMenuAction.IsDown := true;
      end;

      if (keyService.ConfigMode = CONFIG_LAYOUT) then
      begin
        SetMacroMode((currentMenuAction <> nil) and (currentMenuAction.ActionType = maMacro));
      end;
    end;
  end;
end;

procedure TFormMainAdv360.SetMacroMenuItems(button: TColorSpeedButtonCS);
begin
  ResetPopupMenuMacro;

  if (IsKeyLoaded) then
  begin
    lbMenuMacro.Items.Clear;
    activeMacroMenu := button.Name;

    //if (button = btnCommonShortcuts) then
    //begin
    //  lbMenuMacro.Items.AddObject('Cut', TObject(VK_CUT));
    //  lbMenuMacro.Items.AddObject('Copy', TObject(VK_COPY));
    //  lbMenuMacro.Items.AddObject('Paste', TObject(VK_PASTE));
    //  lbMenuMacro.Items.AddObject('Select All', TObject(VK_SELECTALL));
    //  lbMenuMacro.Items.AddObject('Undo', TObject(VK_UNDO));
    //  {$ifdef Win32} //Windows
    //  lbMenuMacro.Items.AddObject('Redo', TObject(VK_REDO));
    //  lbMenuMacro.Items.AddObject('Desktop', TObject(VK_DESKTOP));
    //  {$endif}
    //  lbMenuMacro.Items.AddObject('Last App', TObject(VK_LASTAPP));
    //  {$ifdef Win32} //Windows
    //    lbMenuMacro.Items.AddObject('Ctrl Alt Delete', TObject(VK_CTRLALTDEL));
    //  {$endif}
    //end;
    //else if (button = btnMouseClicksMacro) then
    //begin
    //  lbMenuMacro.Items.AddObject('Left Click', TObject(VK_MOUSE_LEFT));
    //  lbMenuMacro.Items.AddObject('Middle Click', TObject(VK_MOUSE_MIDDLE));
    //  lbMenuMacro.Items.AddObject('Right Click', TObject(VK_MOUSE_RIGHT));
    //  lbMenuMacro.Items.AddObject('Button 4', TObject(VK_MOUSE_BTN4));
    //  lbMenuMacro.Items.AddObject('Button 5', TObject(VK_MOUSE_BTN5));
    //  lbMenuMacro.Items.AddObject('Double-Click', TObject(VK_MOUSE_DBL_125));
    //end;

    if (lbMenuMacro.Items.Count > 0) then
    begin
      pnlMenuMacro.Height := (lbMenuMacro.Items.Count * lbMenuMacro.ItemHeight) + 10;
      pnlMenuMacro.Top := (pnlMacro.Top + button.Top) - pnlMenuMacro.Height;
      pnlMenuMacro.Left := pnlMacro.Left + button.Left;
      pnlMenuMacro.Visible := true;
    end;
  end;
end;

procedure TFormMainAdv360.lbMenuMacroMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  point: TPoint;
  idx: integer;
begin
  point.x := X;
  point.y := Y;

  idx := lbMenuMacro.ItemAtPos(point, true);
  lbMenuMacro.ItemIndex := idx;
end;

procedure TFormMainAdv360.lbMenuMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  point: TPoint;
  idx: integer;
begin
  point.x := X;
  point.y := Y;

  idx := lbMenu.ItemAtPos(point, true);
  lbMenu.ItemIndex := idx;
end;

procedure TFormMainAdv360.lbProfileClick(Sender: TObject);
var
  layoutFile: string;
  ledFile: string;
  errorMsg: string;
  idxPos: integer;
  continue: boolean;
begin
  continue := true;
  layoutFile := '';
  ledFile := '';
  idxPos := lbProfile.ItemIndex + 1;

  if (GDemoMode) then
    continue := false;

  if continue and (not CheckVDrive) then
    continue := ShowTroubleshootingDialog(false);

  if (idxPos >= MIN_LAYOUT_FILE) and (idxPos <= MAX_LAYOUT_FILE) then
  begin
    layoutFile := FILE_LAYOUT + intToStr(idxPos) + '.txt';
    ledFile := FILE_LED + intToStr(idxPos) + '.txt';
  end;

  if continue and (layoutFile <> '') then
  begin
    if (profileMode = pmSelect) then
    begin
      if CheckSaveKey and CheckToSave(true) then
      begin
        if not fileService.CheckIfFileExists(GLayoutFilePath + layoutFile) then
          fileService.SaveFile(GLayoutFilePath + layoutFile, nil, true, errorMsg);
        if not fileService.CheckIfFileExists(GLedFilePath + ledFile) then
          fileService.SaveFile(GLedFilePath + ledFile, nil, true, errorMsg);
        currentLayoutFile := GLayoutFilePath + layoutFile;
        currentLedFile := GLedFilePath + ledFile;
        currentProfileNumber := fileService.GetFileNumber(currentLayoutFile);
        LoadKeyboardLayout(currentLayoutFile, nil);
        LoadLedFile(currentLedFile, nil);
        SetSaveState(ssNone);
      end;
    end
    else if (profileMode = pmSaveAs) then
    begin
      SaveAsAll(IntToStr(idxPos));
    end;
  end;

  ResetProfileMenu;
end;

procedure TFormMainAdv360.lbProfileMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  point: TPoint;
  idx: integer;
begin
  point.x := X;
  point.y := Y;

  idx := lbProfile.ItemAtPos(point, true);
  lbProfile.ItemIndex := idx;

  if (profileMode = pmSaveAs) then
    SetHovered(btnSaveAs, true);
end;

procedure TFormMainAdv360.lbProfileDrawItem(Control: TWinControl; Index: Integer;
  ARect: TRect; State: TOwnerDrawState);
begin
  with (Control as TListBox).Canvas do
  begin
    Font.Color := KINESIS_FONT_COLOR_RGB;
    if odSelected in State then
    begin
      Brush.Color := KINESIS_MED_GRAY_RGB;
      Font.Color := clWhite;
    end;

    FillRect(ARect);
    TextOut(ARect.Left, ARect.Top, (Control as TListBox).Items[Index]);
  end;
end;

procedure TFormMainAdv360.lbMenuDrawItem(Control: TWinControl; Index: Integer;
  ARect: TRect; State: TOwnerDrawState);
begin
    with (Control as TListBox).Canvas do
  begin
    Font.Color := KINESIS_FONT_COLOR_RGB;
    if odSelected in State then
    begin
      Brush.Color := KINESIS_MED_GRAY_RGB;
      Font.Color := clWhite;
    end;

    FillRect(ARect);
    TextOut(ARect.Left, ARect.Top, (Control as TListBox).Items[Index]);
  end;
end;

procedure TFormMainAdv360.SetFnNumericKpLeft;
var
  aLayer: TKBLayer;
  sMessage: string;
begin
  if CheckSaveKey then
  begin
    sMessage := 'Are you sure you want to add the numeric keypad to the top layer?' + #10 + 'This will over-write basic alphanumeric key actions.';

    if (keyService.ActiveLayer.LayerIndex <> LAYER_TOP_360) or (ShowDialog('Insert Numeric Keypad', sMessage,
      mtWarning, [mbYes, mbNo], DEFAULT_DIAG_HEIGHT_RGB) = mrYes) then
    begin
      aLayer := keyService.ActiveLayer;
      if (aLayer <> nil) then
      begin
        KeyModified := true;
        SetSaveState(ssModified);

        keyService.SetKBKeyIdx(aLayer, 1, VK_NUMLOCK);  //Replace 1
        keyService.SetKBKeyIdx(aLayer, 2, VK_KP_EQUAL);  //Replace 2
        keyService.SetKBKeyIdx(aLayer, 3, VK_DIVIDE);  //Replace 3
        keyService.SetKBKeyIdx(aLayer, 4, VK_MULTIPLY);  //Replace 4

        keyService.SetKBKeyIdx(aLayer, 15, VK_NUMPAD7);  //Replace Q
        keyService.SetKBKeyIdx(aLayer, 16, VK_NUMPAD8);  //Replace W
        keyService.SetKBKeyIdx(aLayer, 17, VK_NUMPAD9);  //Replace E
        keyService.SetKBKeyIdx(aLayer, 18, VK_SUBTRACT);  //Replace R

        keyService.SetKBKeyIdx(aLayer, 29, VK_NUMPAD4);  //Replace A
        keyService.SetKBKeyIdx(aLayer, 30, VK_NUMPAD5);  //Replace S
        keyService.SetKBKeyIdx(aLayer, 31, VK_NUMPAD6);  //Replace D
        keyService.SetKBKeyIdx(aLayer, 32, VK_ADD);  //Replace F

        keyService.SetKBKeyIdx(aLayer, 43, VK_NUMPAD1);  //Replace Z
        keyService.SetKBKeyIdx(aLayer, 44, VK_NUMPAD2);  //Replace X
        keyService.SetKBKeyIdx(aLayer, 45, VK_NUMPAD3);  //Replace C
        keyService.SetKBKeyIdx(aLayer, 46, VK_NUMPADENTER);  //Replace V

        keyService.SetKBKeyIdx(aLayer, 56, VK_DECIMAL);  //Replace Caps
        keyService.SetKBKeyIdx(aLayer, 69, VK_NUMPAD0);  //Replace Delete

        ReloadKeyButtons;
        RefreshRemapInfo;
      end;
    end;
  end;
end;

procedure TFormMainAdv360.SetFnNumericKpRight;
var
  aLayer: TKBLayer;
  sMessage: string;
begin
  if CheckSaveKey then
  begin
    sMessage := 'Are you sure you want to add the numeric keypad to the top layer?' + #10 + 'This will over-write basic alphanumeric key actions.';

    if (keyService.ActiveLayer.LayerIndex <> LAYER_TOP_360) or (ShowDialog('Insert Numeric Keypad', sMessage,
      mtWarning, [mbYes, mbNo], DEFAULT_DIAG_HEIGHT_RGB) = mrYes) then
    begin
      aLayer := keyService.ActiveLayer;
      if (aLayer <> nil) then
      begin
        KeyModified := true;
        SetSaveState(ssModified);

        keyService.SetKBKeyIdx(aLayer, 9, VK_NUMLOCK);  //Replace 7
        keyService.SetKBKeyIdx(aLayer, 10, VK_KP_EQUAL);  //Replace 8
        keyService.SetKBKeyIdx(aLayer, 11, VK_DIVIDE);  //Replace 9
        keyService.SetKBKeyIdx(aLayer, 12, VK_MULTIPLY);  //Replace 0

        keyService.SetKBKeyIdx(aLayer, 23, VK_NUMPAD7);  //Replace U
        keyService.SetKBKeyIdx(aLayer, 24, VK_NUMPAD8);  //Replace I
        keyService.SetKBKeyIdx(aLayer, 25, VK_NUMPAD9);  //Replace O
        keyService.SetKBKeyIdx(aLayer, 26, VK_SUBTRACT);  //Replace P

        keyService.SetKBKeyIdx(aLayer, 37, VK_NUMPAD4);  //Replace J

        keyService.SetKBKeyIdx(aLayer, 38, VK_NUMPAD5);  //Replace K
        keyService.SetKBKeyIdx(aLayer, 39, VK_NUMPAD6);  //Replace L
        keyService.SetKBKeyIdx(aLayer, 40, VK_ADD);  //Replace Semicolon

        keyService.SetKBKeyIdx(aLayer, 49, VK_NUMPAD1);  //Replace M
        keyService.SetKBKeyIdx(aLayer, 50, VK_NUMPAD2);  //Replace Comma
        keyService.SetKBKeyIdx(aLayer, 51, VK_NUMPAD3);  //Replace Period
        keyService.SetKBKeyIdx(aLayer, 52, VK_NUMPADENTER);  //Replace /
        keyService.SetKBKeyIdx(aLayer, 61, VK_DECIMAL);  //Replace OBrack
        keyService.SetKBKeyIdx(aLayer, 73, VK_NUMPAD0);  //Replace Space

        ReloadKeyButtons;
        RefreshRemapInfo;
      end;
    end;
  end;
end;

procedure TFormMainAdv360.SetMacModifiersHotkeys;
var
  i:integer;
  aLayer: TKBLayer;
begin
  if CheckSaveKey then
  begin
    if ShowDialog('Mac Modifiers', 'Insert Mac Modifiers?' + #10#10 + 'Note: Implementing this layout may overwrite existing macros/remaps.',
      mtWarning, [mbYes, mbNo], DEFAULT_DIAG_HEIGHT_RGB) = mrYes then
    begin
      KeyModified := true;
      SetSaveState(ssModified);

      for i := 0 to keyService.KBLayers.Count - 1 do
      begin
        aLayer := keyService.KBLayers[i];

        //LWIN - ALT
        keyService.SetKBKeyIdx(aLayer, 54, VK_MENU);

        //LALT - LWIN
        keyService.SetKBKeyIdx(aLayer, 55, VK_LWIN);

        //RALT - LWIN
        keyService.SetKBKeyIdx(aLayer, 59, VK_LWIN);

        //RCTRL - ALT
        keyService.SetKBKeyIdx(aLayer, 62, VK_MENU);
      end;
      ReloadKeyButtons;
      RefreshRemapInfo;
    end;
  end;
end;

procedure TFormMainAdv360.SetFreestyle2Hotkeys;
var
  aMacro: TKeyList;
begin
  if CheckSaveKey then
  begin
    if ShowDialog('Preconfigured Hotkeys', 'Insert Freestyle2 Hotkeys?' + #10#10 + 'Note: Implementing this layout may overwrite existing macros/remaps.',
      mtWarning, [mbYes, mbNo], DEFAULT_DIAG_HEIGHT_RGB) = mrYes then
    begin
      aMacro := TKeyList.Create;
      KeyModified := true;
      MacroModified := true;
      SetSaveState(ssModified);

      {$ifdef Win32} //Windows
        //HK1 - lalt + left
        aMacro.Add(keyService.GetKeyWithModifier(VK_LEFT, GetKeyModifierText(VK_LMENU)));
        keyService.SetKeyMacroIdx(keyService.ActiveLayer, 17, aMacro);

        //HK2 - lalt + right
        aMacro.Clear;
        aMacro.Add(keyService.GetKeyWithModifier(VK_RIGHT, GetKeyModifierText(VK_LMENU)));
        keyService.SetKeyMacroIdx(keyService.ActiveLayer, 18, aMacro);

        //HK3 - LCONTROL + Z
        aMacro.Clear;
        aMacro.Add(keyService.GetKeyWithModifier(VK_Z, GetKeyModifierText(VK_LCONTROL)));
        keyService.SetKeyMacroIdx(keyService.ActiveLayer, 34, aMacro);

        //HK4 - lalt + home
        aMacro.Clear;
        aMacro.Add(keyService.GetKeyWithModifier(VK_HOME, GetKeyModifierText(VK_LMENU)));
        keyService.SetKeyMacroIdx(keyService.ActiveLayer, 35, aMacro);

        //HK5 - lcontrol + x
        aMacro.Clear;
        aMacro.Add(keyService.GetKeyWithModifier(VK_X, GetKeyModifierText(VK_LCONTROL)));
        keyService.SetKeyMacroIdx(keyService.ActiveLayer, 51, aMacro);

        //HK6 - Del
        keyService.SetKBKeyIdx(keyService.ActiveLayer, 52, VK_DELETE);

        //HK7 - lcontrol + c
        aMacro.Clear;
        aMacro.Add(keyService.GetKeyWithModifier(VK_C, GetKeyModifierText(VK_LCONTROL)));
        keyService.SetKeyMacroIdx(keyService.ActiveLayer, 67, aMacro);

        //HK8 - lcontrol + v
        aMacro.Clear;
        aMacro.Add(keyService.GetKeyWithModifier(VK_V, GetKeyModifierText(VK_LCONTROL)));
        keyService.SetKeyMacroIdx(keyService.ActiveLayer, 68, aMacro);
      {$endif}
      {$ifdef Darwin}  //MacOS
        //HK0 - LED
        keyService.SetKBKeyIdx(keyService.ActiveLayer, 0, VK_LED);

        //HK1 - lcmd + left
        aMacro.Add(keyService.GetKeyWithModifier(VK_LEFT, GetKeyModifierText(VK_LWIN)));
        keyService.SetKeyMacroIdx(keyService.ActiveLayer, 17, aMacro);

        //HK2 - lcmd + right
        aMacro.Clear;
        aMacro.Add(keyService.GetKeyWithModifier(VK_RIGHT, GetKeyModifierText(VK_LWIN)));
        keyService.SetKeyMacroIdx(keyService.ActiveLayer, 18, aMacro);

        //HK3 - lalt + left
        aMacro.Clear;
        aMacro.Add(keyService.GetKeyWithModifier(VK_LEFT, GetKeyModifierText(VK_LMENU)));
        keyService.SetKeyMacroIdx(keyService.ActiveLayer, 34, aMacro);

        //HK4 - lalt + right
        aMacro.Clear;
        aMacro.Add(keyService.GetKeyWithModifier(VK_RIGHT, GetKeyModifierText(VK_LMENU)));
        keyService.SetKeyMacroIdx(keyService.ActiveLayer, 35, aMacro);

        //HK5 - LWIN + Z
        aMacro.Clear;
        aMacro.Add(keyService.GetKeyWithModifier(VK_Z, GetKeyModifierText(VK_LWIN)));
        keyService.SetKeyMacroIdx(keyService.ActiveLayer, 51, aMacro);

        //HK6 - LWIN + X
        aMacro.Clear;
        aMacro.Add(keyService.GetKeyWithModifier(VK_X, GetKeyModifierText(VK_LWIN)));
        keyService.SetKeyMacroIdx(keyService.ActiveLayer, 52, aMacro);

        //HK7 - LWIN + A
        aMacro.Clear;
        aMacro.Add(keyService.GetKeyWithModifier(VK_A, GetKeyModifierText(VK_LWIN)));
        keyService.SetKeyMacroIdx(keyService.ActiveLayer, 67, aMacro);

        //HK8 - LWIN + C
        aMacro.Clear;
        aMacro.Add(keyService.GetKeyWithModifier(VK_C, GetKeyModifierText(VK_LWIN)));
        keyService.SetKeyMacroIdx(keyService.ActiveLayer, 68, aMacro);

        //LED - LWIN + V
        aMacro.Clear;
        aMacro.Add(keyService.GetKeyWithModifier(VK_V, GetKeyModifierText(VK_LWIN)));
        keyService.SetKeyMacroIdx(keyService.ActiveLayer, 84, aMacro);
      {$endif}

      ReloadKeyButtons;
      RefreshRemapInfo;
    end;
  end;
end;

procedure TFormMainAdv360.SetFreestyleProHotkeys;
var
  aMacro: TKeyList;
begin
  if CheckSaveKey then
  begin
    if ShowDialog('Preconfigured Hotkeys', 'Insert Freestyle Pro Hotkeys?' + #10#10 + 'Note: Implementing this layout may overwrite existing macros/remaps.',
      mtWarning, [mbYes, mbNo], DEFAULT_DIAG_HEIGHT_RGB) = mrYes then
    begin
      aMacro := TKeyList.Create;
      KeyModified := true;
      MacroModified := true;
      SetSaveState(ssModified);

      //HK1 - lwin + d
      aMacro.Add(keyService.GetKeyWithModifier(VK_D, GetKeyModifierText(VK_LWIN)));
      keyService.SetKeyMacroIdx(keyService.ActiveLayer, 17, aMacro);

      //HK2 - lalt + tab
      aMacro.Clear;
      aMacro.Add(keyService.GetKeyWithModifier(VK_TAB, GetKeyModifierText(VK_LMENU)));
      keyService.SetKeyMacroIdx(keyService.ActiveLayer, 18, aMacro);

      //HK3 - LCONTROL + A
      aMacro.Clear;
      aMacro.Add(keyService.GetKeyWithModifier(VK_A, GetKeyModifierText(VK_LCONTROL)));
      keyService.SetKeyMacroIdx(keyService.ActiveLayer, 34, aMacro);

      //HK4 - lcontrol + Z
      aMacro.Clear;
      aMacro.Add(keyService.GetKeyWithModifier(VK_Z, GetKeyModifierText(VK_LCONTROL)));
      keyService.SetKeyMacroIdx(keyService.ActiveLayer, 35, aMacro);

      //HK5 - lcontrol + x
      aMacro.Clear;
      aMacro.Add(keyService.GetKeyWithModifier(VK_X, GetKeyModifierText(VK_LCONTROL)));
      keyService.SetKeyMacroIdx(keyService.ActiveLayer, 51, aMacro);

      //HK6 - Del
      keyService.SetKBKeyIdx(keyService.ActiveLayer, 52, VK_DELETE);

      //HK7 - lcontrol + c
      aMacro.Clear;
      aMacro.Add(keyService.GetKeyWithModifier(VK_C, GetKeyModifierText(VK_LCONTROL)));
      keyService.SetKeyMacroIdx(keyService.ActiveLayer, 67, aMacro);

      //HK8 - lcontrol + v
      aMacro.Clear;
      aMacro.Add(keyService.GetKeyWithModifier(VK_V, GetKeyModifierText(VK_LCONTROL)));
      keyService.SetKeyMacroIdx(keyService.ActiveLayer, 68, aMacro);

      ReloadKeyButtons;
      RefreshRemapInfo;
    end;
  end;
end;

procedure TFormMainAdv360.SetWorkmanKb(layerIdx: integer; bothLayers: boolean);
var
  aLayer: TKBLayer;
  i: integer;
begin
  if CheckSaveKey then
  begin
    CloseDialog(mrOk);

    for i := 0 to keyService.KBLayers.Count - 1 do
    begin
      aLayer := keyService.KBLayers[i];
      if (aLayer <> nil) and (bothLayers or (layerIdx = i)) then
      begin
        KeyModified := true;
        SetSaveState(ssModified);

        //Reset keys from other alternate layouts
        keyService.ResetKey(aLayer, 11);
        keyService.ResetKey(aLayer, 12);
        keyService.ResetKey(aLayer, 15);
        keyService.ResetKey(aLayer, 25);
        keyService.ResetKey(aLayer, 26);
        keyService.ResetKey(aLayer, 30);
        keyService.ResetKey(aLayer, 33);
        keyService.ResetKey(aLayer, 39);
        keyService.ResetKey(aLayer, 42);
        keyService.ResetKey(aLayer, 43);
        keyService.ResetKey(aLayer, 49);
        keyService.ResetKey(aLayer, 50);
        keyService.ResetKey(aLayer, 51);

        keyService.SetKBKeyIdx(aLayer, 16, VK_D);  //Replace w
        keyService.SetKBKeyIdx(aLayer, 17, VK_R);  //Replace e
        keyService.SetKBKeyIdx(aLayer, 18, VK_W);  //Replace r
        keyService.SetKBKeyIdx(aLayer, 19, VK_B);  //Replace t
        keyService.SetKBKeyIdx(aLayer, 20, VK_J); //Replace y
        keyService.SetKBKeyIdx(aLayer, 21, VK_F); //Replace u
        keyService.SetKBKeyIdx(aLayer, 22, VK_U); //Replace i
        keyService.SetKBKeyIdx(aLayer, 23, VK_P); //Replace o
        keyService.SetKBKeyIdx(aLayer, 24, VK_LCL_SEMI_COMMA); //Replace P
        keyService.SetKBKeyIdx(aLayer, 31, VK_H); //Replace D
        keyService.SetKBKeyIdx(aLayer, 32, VK_T); //Replace F
        keyService.SetKBKeyIdx(aLayer, 34, VK_Y); //Replace H
        keyService.SetKBKeyIdx(aLayer, 35, VK_N); //Replace J
        keyService.SetKBKeyIdx(aLayer, 36, VK_E);  //Replace K
        keyService.SetKBKeyIdx(aLayer, 37, VK_O);  //Replace L
        keyService.SetKBKeyIdx(aLayer, 38, VK_I);  //Replace COLON
        keyService.SetKBKeyIdx(aLayer, 44, VK_M);  //Replace C
        keyService.SetKBKeyIdx(aLayer, 45, VK_C);  //Replace V
        keyService.SetKBKeyIdx(aLayer, 46, VK_V);  //Replace B
        keyService.SetKBKeyIdx(aLayer, 47, VK_K);  //Replace N
        keyService.SetKBKeyIdx(aLayer, 48, VK_L);  //Replace M
      end;
    end;

    if (not bothLayers) then
    begin
      SetActiveLayer(layerIdx);
    end
    else
      LoadLayer(keyService.ActiveLayer);
    RefreshRemapInfo;
    ResetPopupMenu;
    ResetSingleKey;
  end;
end;

procedure TFormMainAdv360.SetDvorakKb(layerIdx: integer; bothLayers: boolean);
var
  aLayer: TKBLayer;
  i: integer;
begin
  if CheckSaveKey then
  begin
    CloseDialog(mrOk);

    for i := 0 to keyService.KBLayers.Count - 1 do
    begin
      aLayer := keyService.KBLayers[i];
      if (aLayer <> nil) and (bothLayers or (layerIdx = i)) then
      begin
        KeyModified := true;
        SetSaveState(ssModified);

        //Reset keys from other alternate layouts
        keyService.ResetKey(aLayer, 48);

        keyService.SetKBKeyIdx(aLayer, 11, VK_LCL_OPEN_BRAKET);  //Replace -
        keyService.SetKBKeyIdx(aLayer, 12, VK_LCL_CLOSE_BRAKET);  //Replace =
        keyService.SetKBKeyIdx(aLayer, 15, VK_LCL_QUOTE);  //Replace q
        keyService.SetKBKeyIdx(aLayer, 16, VK_LCL_COMMA);  //Replace w
        keyService.SetKBKeyIdx(aLayer, 17, VK_LCL_POINT); //Replace e

        keyService.SetKBKeyIdx(aLayer, 18, VK_P); //Replace r
        keyService.SetKBKeyIdx(aLayer, 19, VK_Y); //Replace t
        keyService.SetKBKeyIdx(aLayer, 20, VK_F); //Replace y
        keyService.SetKBKeyIdx(aLayer, 21, VK_G); //Replace u
        keyService.SetKBKeyIdx(aLayer, 22, VK_C); //Replace i
        keyService.SetKBKeyIdx(aLayer, 23, VK_R); //Replace o
        keyService.SetKBKeyIdx(aLayer, 24, VK_L); //Replace p

        keyService.SetKBKeyIdx(aLayer, 25, VK_LCL_SLASH);  //Replace [
        keyService.SetKBKeyIdx(aLayer, 26, VK_LCL_EQUAL);  //Replace ]
        keyService.SetKBKeyIdx(aLayer, 30, VK_O);  //Replace s
        keyService.SetKBKeyIdx(aLayer, 31, VK_E);  //Replace d
        keyService.SetKBKeyIdx(aLayer, 32, VK_U);  //Replace f
        keyService.SetKBKeyIdx(aLayer, 33, VK_I);  //Replace g
        keyService.SetKBKeyIdx(aLayer, 34, VK_D);  //Replace h
        keyService.SetKBKeyIdx(aLayer, 35, VK_H);  //Replace j
        keyService.SetKBKeyIdx(aLayer, 36, VK_T);  //Replace k
        keyService.SetKBKeyIdx(aLayer, 37, VK_N);  //Replace l

        keyService.SetKBKeyIdx(aLayer, 38, VK_S);  //Replace colon
        keyService.SetKBKeyIdx(aLayer, 39, VK_LCL_MINUS);  //Replace apos
        keyService.SetKBKeyIdx(aLayer, 42, VK_LCL_SEMI_COMMA);  //Replace z
        keyService.SetKBKeyIdx(aLayer, 43, VK_Q);  //Replace x
        keyService.SetKBKeyIdx(aLayer, 44, VK_J);  //Replace c
        keyService.SetKBKeyIdx(aLayer, 45, VK_K);  //Replace v
        keyService.SetKBKeyIdx(aLayer, 46, VK_X);  //Replace b
        keyService.SetKBKeyIdx(aLayer, 47, VK_B);  //Replace n
        keyService.SetKBKeyIdx(aLayer, 49, VK_W);  //Replace comma
        keyService.SetKBKeyIdx(aLayer, 50, VK_V);  //Replace period
        keyService.SetKBKeyIdx(aLayer, 51, VK_Z);  //Replace /
      end;
    end;

    if (not bothLayers) then
    begin
      SetActiveLayer(layerIdx);
    end
    else
      LoadLayer(keyService.ActiveLayer);
    RefreshRemapInfo;
    ResetPopupMenu;
    ResetSingleKey;
  end;
end;

procedure TFormMainAdv360.SetColemakKb(layerIdx: integer; bothLayers: boolean);
var
  aLayer: TKBLayer;
  i: integer;
begin
  if CheckSaveKey then
  begin
    CloseDialog(mrOk);

    for i := 0 to keyService.KBLayers.Count - 1 do
    begin
      aLayer := keyService.KBLayers[i];
      if (aLayer <> nil) and (bothLayers or (layerIdx = i)) then
      begin
        KeyModified := true;
        SetSaveState(ssModified);

        //Reset keys from other alternate layouts
        keyService.ResetKey(aLayer, 11);
        keyService.ResetKey(aLayer, 12);
        keyService.ResetKey(aLayer, 15);
        keyService.ResetKey(aLayer, 16);
        keyService.ResetKey(aLayer, 25);
        keyService.ResetKey(aLayer, 26);
        keyService.ResetKey(aLayer, 34);
        keyService.ResetKey(aLayer, 39);
        keyService.ResetKey(aLayer, 42);
        keyService.ResetKey(aLayer, 43);
        keyService.ResetKey(aLayer, 44);
        keyService.ResetKey(aLayer, 45);
        keyService.ResetKey(aLayer, 46);
        keyService.ResetKey(aLayer, 49);
        keyService.ResetKey(aLayer, 50);
        keyService.ResetKey(aLayer, 51);

        keyService.SetKBKeyIdx(aLayer, 17, VK_F);  //Replace e
        keyService.SetKBKeyIdx(aLayer, 18, VK_P);  //Replace r
        keyService.SetKBKeyIdx(aLayer, 19, VK_G);  //Replace t
        keyService.SetKBKeyIdx(aLayer, 20, VK_J);  //Replace y
        keyService.SetKBKeyIdx(aLayer, 21, VK_L); //Replace u
        keyService.SetKBKeyIdx(aLayer, 22, VK_U); //Replace i
        keyService.SetKBKeyIdx(aLayer, 23, VK_Y); //Replace o
        keyService.SetKBKeyIdx(aLayer, 24, VK_LCL_SEMI_COMMA); //Replace p
        keyService.SetKBKeyIdx(aLayer, 30, VK_R); //Replace s
        keyService.SetKBKeyIdx(aLayer, 31, VK_S); //Replace d
        keyService.SetKBKeyIdx(aLayer, 32, VK_T); //Replace f
        keyService.SetKBKeyIdx(aLayer, 33, VK_D); //Replace g
        keyService.SetKBKeyIdx(aLayer, 35, VK_N);  //Replace j
        keyService.SetKBKeyIdx(aLayer, 36, VK_E);  //Replace k
        keyService.SetKBKeyIdx(aLayer, 37, VK_I);  //Replace l
        keyService.SetKBKeyIdx(aLayer, 38, VK_O);  //Replace colon
        keyService.SetKBKeyIdx(aLayer, 47, VK_K);  //Replace n
      end;
    end;

    if (not bothLayers) then
    begin
      SetActiveLayer(layerIdx);
    end
    else
      LoadLayer(keyService.ActiveLayer);
    RefreshRemapInfo;
    ResetPopupMenu;
    ResetSingleKey;
  end;
end;

function TFormMainAdv360.GetCursorNextKey(cursorPos: integer): integer;
var
  i:integer;
  keyIdx: integer;
  newKeyIdx: integer;
begin
  result := -1;
  if (IsKeyLoaded and EditingMacro and (cursorPos < LengthUTF8(memoMacro.Text))) then
  begin
    keyIdx := keyService.GetKeyAtPosition(activeKbKey.ActiveMacro, cursorPos);
    for i := cursorPos + 1 to LengthUTF8(memoMacro.Text) do
    begin
      newKeyIdx := keyService.GetKeyAtPosition(activeKbKey.ActiveMacro, i);
      if (keyIdx <> newKeyIdx) then
      begin
        result := i - 1;
        break;
      end;
    end;
  end;
end;

function TFormMainAdv360.GetCursorPrevKey(cursorPos: integer): integer;
var
  i:integer;
  keyIdx: integer;
  prevKeyIdx: integer;
begin
  result := -1; //cursorPos - 1;
  if (IsKeyLoaded and EditingMacro and (cursorPos > 1)) then
  begin
    keyIdx := keyService.GetKeyAtPosition(activeKbKey.ActiveMacro, cursorPos);
    for i := cursorPos - 1 downto 0 do
    begin
      prevKeyIdx := keyService.GetKeyAtPosition(activeKbKey.ActiveMacro, i);
      if (keyIdx <> prevKeyIdx) then
      begin
        result := i;
        break;
      end;
    end;
  end;
end;

function TFormMainAdv360.CanAssignMacro: boolean;
begin
  result := IsKeyLoaded;

  if (IsKeyLoaded) and not(activeKbKey.CanAssignMacro) then
  begin
    result := false;
    ShowDialog('Macro', 'You cannot assign a macro to this key.', mtWarning, [mbOK]);
  end
  else if (IsKeyLoaded) and (activeKbKey.TapAndHold) then
  begin
    result := false;
    ShowDialog('Macro', 'You cannot assign a macro to a Tap and Hold action key.', mtWarning, [mbOK]);
  end
end;

procedure TFormMainAdv360.SetModifiedKey(key: word; Modifiers: string;
  isMacro: boolean; bothLayers: boolean; force: boolean; overwriteTapHold: boolean);
var
  aKbKeyOtherLayer: TKBKey;
  cursorPos: integer;
  cursorNext: integer;
  keyIdx: integer;
  isDiffKey: boolean;
  lastPos: boolean;
  keyAdded: TKey;
  textKey: string;
  isLongKey: boolean;
  nbKeystrokes: integer;
begin
  if (keyService.ConfigMode = CONFIG_LAYOUT) and (IsKeyLoaded) then
  begin
    if (isMacro) and (EditingMacro) then
    begin
      if (CanAssignMacro) then
      begin
        nbKeystrokes := keyService.CountKeystrokes(activeKbKey.ActiveMacro);
        inc(nbKeystrokes);
        nbKeystrokes := nbKeystrokes + (keyService.CountModifiers(Modifiers) * 2);
        if (nbKeystrokes > MAX_KEYSTROKES_MACRO_ADV360) then
          ShowDialog('Maximum Length Reached', 'Macros are limited to approximately 300 characters.',
            mtError, [mbOK], DEFAULT_DIAG_HEIGHT_RGB)
        else
        begin
          //First keystroke in macro assign 1 to multiplay position
          //jm temp
          //if (nbKeystrokes = 1) then
          //begin
          //  tbMultiplay.Position := 1;
          //  slMacroMultiplay.Position := 1;
          //end;
          //jm temp
          activeKbKey.IsMacro := true;
          cursorPos := memoMacro.SelStart;
          cursorNext := GetCursorNextKey(cursorPos);
          lastPos := (cursorPos >= LengthUTF8(memoMacro.Text));
          if (cursorNext <> -1) and (cursorPos <> 0) then
            keyIdx := keyService.GetKeyAtPosition(activeKbKey.ActiveMacro, cursorNext + 1)
          else
            keyIdx := keyService.GetKeyAtPosition(activeKbKey.ActiveMacro, cursorPos + 1);
          keyAdded := keyService.AddKey(activeKbKey, key, Modifiers, keyIdx);
          if (keyAdded <> nil) then
          begin
            textKey := keyService.GetSingleKeyText(keyAdded, isLongKey);
            textKey := StringReplace(textKey, ' ', AnsiToUtf8(#$e2#$90#$a3), [rfReplaceAll]);
            MacroModified := true;

            //Insert key in memo
            if (cursorPos <> 0) then
            begin
              if (lastPos) then
                cursorPos := LengthUTF8(memoMacro.Text)
              else
              begin
                cursorPos := cursorNext;

                //Must insert at end
                if (cursorPos = -1) then
                begin
                  cursorPos := LengthUTF8(memoMacro.Text);
                  lastPos := true;
                end;
              end;
            end;
            memoMacro.SelStart := cursorPos;
            memoMacro.SelText := textKey;
            memoMacro.SelLength := 0;

            //Set cursor at end if inserted at the end
            if (lastPos) then
              memoMacro.SelStart := LengthUTF8(memoMacro.Text)
            else //Set cursor + length text otherwise
              memoMacro.SelStart := memoMacro.SelStart + LengthUTF8(textKey);

            //Color key text if is long key
            if (isLongKey) then
              memoMacro.SetRangeColor(cursorPos, LengthUTF8(textKey), clRed)
            else
              memoMacro.SetRangeColor(cursorPos, LengthUTF8(textKey), clDefault);

            textMacroInput.Visible := activeKbKey.ActiveMacro.Count = 0;
          end;
        end;
      end;
    end
    else if (not MacroModified) then //and (RemapMode or force) then
    begin
      isDiffKey := (activeKbKey.IsModified and (activeKbKey.ModifiedKey.Key <> key)) or
        ((not activeKbKey.IsModified) and (activeKbKey.OriginalKey.Key <> key));

      //Checks if key is really modified
      if (isDiffKey) then
      begin
        KeyModified := true;
        SetSaveState(ssModified);
        keyService.SetKBKey(activeKbKey, key, overwriteTapHold);
        if (bothLayers) then
        begin
          aKbKeyOtherLayer := GetKeyOtherLayer(keyService, activeKeyBtn.Index);
          if aKbKeyOtherLayer <> nil then
            keyService.SetKBKey(aKbKeyOtherLayer, key, overwriteTapHold);
        end;
        UpdateKeyButtonKey(activeKbKey, activeKeyBtn);
      end;
    end;
  end;
end;

procedure TFormMainAdv360.UpdateMenu;
begin

end;

procedure TFormMainAdv360.menuButtonUpdate(Sender: TObject);
var
  aButton: TColorSpeedButtonCS;
begin
  aButton := (Sender as TColorSpeedButtonCS);
  if (aButton.Down) then
    aButton.Font.Color := blueColor;
end;

//Macro section

procedure TFormMainAdv360.OpenMacroEditor;
begin
  //if IsKeyLoaded then
  //begin
  if (IsKeyLoaded and activeKbKey.TapAndHold) then
  begin
    ShowDialog('Tap and Hold', 'You cannot assign a macro to a Tap and Hold action key.',
      mtWarning, [mbOk], DEFAULT_DIAG_HEIGHT_RGB);
  end;

  if (not EditingMacro) then
  begin
    btnMacro.GroupIndex := 10;
    btnMacro.Down := true;
    SetWindowsCombo(false);
    pnlMacro.Visible := true;
    pnlMacro.Left := imgKeyboardLayout.Left + imgKeyboardLayout.Width - pnlMacro.Width;
    {$ifdef win32}
    //causes bug with Cocoa osx
    pnlMacro.BringToFront;
    {$endif}
    if (IsKeyLoaded) and not(activeKbKey.TapAndHold) then
      memoMacro.SetFocus;
  end;
  keyService.BackupMacro(activeKbKey);

  rgMacro1.Checked := true;
  memoMacro.Text := '';
  LoadMacro;
  SetMacroText(true);
  //end
  //else
  //begin
  //  pnlMacro.Visible := false;
  //  ShowDialog('Macro', 'You must select a key on the keyboard', mtWarning, [mbOK]);
  //end;
end;

procedure TFormMainAdv360.CloseMacroEditor;
begin
  btnMacro.Down := false;
  //Only way to make macro button down = false
  btnMacroOff.Down := true;
  pnlMacro.Visible := false;
end;

procedure TFormMainAdv360.LoadMacro;
begin
  loadingMacro := true;
  ResetMacroCoTriggers;
  lastKeyDown := 0; //Resets last key down
  lastKeyPressed := 0; //Resets last key pressed
  keyService.ClearModifiers; //Removes all modifiers from memory
  if (WindowsComboOn) then
    SetWindowsCombo(true);

  if (IsKeyLoaded) then
  begin
    if (rgMacro1.Checked) then
      activeKbKey.ActiveMacro := activeKbKey.Macro1
    else if (rgMacro2.Checked) then
      activeKbKey.ActiveMacro := activeKbKey.Macro2
    else if (rgMacro3.Checked) then
      activeKbKey.ActiveMacro := activeKbKey.Macro3;

    chkGlobalSpeed.Checked := activeKbKey.ActiveMacro.MacroSpeed = -1;
    if (activeKbKey.ActiveMacro.MacroSpeed >= MACRO_SPEED_MIN_ADV360) and (activeKbKey.ActiveMacro.MacroSpeed <= MACRO_SPEED_MAX_RGB) then
    begin
      sliderMacroSpeed.Position := activeKbKey.ActiveMacro.MacroSpeed;
    end
    else
    begin
      sliderMacroSpeed.Position := DEFAULT_MACRO_SPEED_RGB;
    end;
    sliderMacroSpeedChange(self);

    chkRepeatMultiplay.Checked := activeKbKey.ActiveMacro.MacroRptFreq = -1;
    if (activeKbKey.ActiveMacro.MacroRptFreq >= MACRO_FREQ_MIN_ADV360) and (activeKbKey.ActiveMacro.MacroRptFreq <= MACRO_FREQ_MAX_RGB) then
    begin
      sliderMultiplay.Position := activeKbKey.ActiveMacro.MacroRptFreq
    end
    else
    begin
      sliderMultiplay.Position := DEFAULT_MACRO_FREQ_RGB;
    end;
    sliderMultiplayChange(self);

    if activeKbKey.Macro1.Count > 0 then
      lblMacro1.Font.Color := blueColor
    else
    begin
      lblMacro1.Font.Color := fontColor;
      activeKbKey.Macro1.CoTrigger1 := nil;
    end;
    if activeKbKey.Macro2.Count > 0 then
      lblMacro2.Font.Color := blueColor
    else
    begin
      lblMacro2.Font.Color := fontColor;
      activeKbKey.Macro2.CoTrigger1 := nil;
    end;
    if activeKbKey.Macro3.Count > 0 then
      lblMacro3.Font.Color := blueColor
    else
    begin
      lblMacro3.Font.Color := fontColor;
      activeKbKey.Macro3.CoTrigger1 := nil;
    end;

    SetCoTrigger(activeKbKey.ActiveMacro.CoTrigger1);
    SetMacroAssignTo;
  end;

  loadingMacro := false;
end;

procedure TFormMainAdv360.rgMacroClick(Sender: TObject);
begin
  if (IsKeyLoaded) then
  begin
    SetWindowsCombo(false);
    LoadMacro;
    SetMacroText(true);
  end;
end;

procedure TFormMainAdv360.SetCoTrigger(aKey: TKey);
begin
  if (aKey <> nil) then
  begin
    if (aKey.Key = VK_LSHIFT) then
      ActivateCoTrigger(btnLeftShift);
    if (aKey.Key = VK_LCONTROL) then
      ActivateCoTrigger(btnLeftCtrl);
    if (aKey.Key = VK_LMENU) then
      ActivateCoTrigger(btnLeftAlt);
    if (aKey.Key = VK_RSHIFT) then
      ActivateCoTrigger(btnRightShift);
    if (aKey.Key = VK_RCONTROL) then
      ActivateCoTrigger(btnRightCtrl);
    if (aKey.Key = VK_RMENU) then
      ActivateCoTrigger(btnRightAlt);
  end;
end;

procedure TFormMainAdv360.ActivateCoTrigger(coTriggerBtn: TColorSpeedButtonCS);
begin
  coTriggerBtn.HelpKeyword := 'DOWN';
  coTriggerBtn.Down := true;
  //SetHovered(coTriggerBtn, true);
  SetMacroAssignTo;
end;

procedure TFormMainAdv360.SetMacroAssignTo;
var
  keyAssigned: string;
begin
  if (activeKbKey <> nil) then
  begin
    if activeKbKey.ActiveMacro.CoTrigger1 <> nil then
      keyAssigned := activeKbKey.ActiveMacro.CoTrigger1.OtherDisplayText + ' + ' + activeKbKey.OriginalKey.OtherDisplayText
    else
      keyAssigned := activeKbKey.OriginalKey.OtherDisplayText;
  end;
  if (keyAssigned <> '') and (keyService.ActiveLayer.LayerIndex = LAYER_KEYPAD_360) then
    keyAssigned := 'Fn Layer ' + keyAssigned;

  if (keyAssigned <> '') then
    pnlAssignMacro.Caption := 'Assign to ' + keyAssigned
  else
    pnlAssignMacro.Caption := '';
end;

//Resets co-trigger buttons to default values
procedure TFormMainAdv360.ResetMacroCoTriggers;
begin
  ResetCoTrigger(btnLeftShift);
  ResetCoTrigger(btnRightShift);
  ResetCoTrigger(btnLeftAlt);
  ResetCoTrigger(btnRightAlt);
  ResetCoTrigger(btnLeftCtrl);
  ResetCoTrigger(btnRightCtrl);
end;

procedure TFormMainAdv360.ResetCoTrigger(coTriggerBtn: TColorSpeedButtonCS);
begin
  coTriggerBtn.HelpKeyword := '';
  coTriggerBtn.Down := false;
  //SetHovered(coTriggerBtn, false, true);
end;

function TFormMainAdv360.GetCoTriggerKey(Sender: TObject): TKey;
begin
  if (Sender = btnLeftShift) then
    result := keyService.FindKeyConfig(VK_LSHIFT)
  else if (Sender = btnRightShift) then
    result := keyService.FindKeyConfig(VK_RSHIFT)
  else if (Sender = btnLeftCtrl) then
    result := keyService.FindKeyConfig(VK_LCONTROL)
  else if (Sender = btnRightCtrl) then
    result := keyService.FindKeyConfig(VK_RCONTROL)
  else if (Sender = btnLeftAlt) then
    result := keyService.FindKeyConfig(VK_LMENU)
  else if (Sender = btnRightAlt) then
    result := keyService.FindKeyConfig(VK_RMENU)
  else
    result := nil;
end;

procedure TFormMainAdv360.RemoveCoTrigger(key: word);
begin
  if IsKeyLoaded then
  begin
    MacroModified := true;
    if (activeKbKey.ActiveMacro.CoTrigger1 <> nil) and (activeKbKey.ActiveMacro.CoTrigger1.Key = key) then
      activeKbKey.ActiveMacro.CoTrigger1 := nil;

    SetMacroAssignTo;
  end;
end;

procedure TFormMainAdv360.btnCopyClick(Sender: TObject);
var
  hideNotif: integer;
begin
  if (IsKeyLoaded) then
  begin
    ResetPopupMenuMacro;
    if (activeKbKey.ActiveMacro <> nil) then
    begin
      copiedMacro := keyService.CopyMacro(activeKbKey.ActiveMacro);
      if (ShowNotification(fileService.AppSettings.CopyMacroMsg)) then
      begin
        hideNotif := ShowDialog('Copy', 'Macro copied. Now select a new trigger key or load a new layout, then hit Paste.',
          mtInformation, [mbOK], DEFAULT_DIAG_HEIGHT_RGB, nil, 'Hide this notification?');
        if (hideNotif >= DISABLE_NOTIF) then
        begin
          fileService.SetCopyMacroMsg(true);
          fileService.SaveAppSettings;
        end;
      end;
    end
    else
      ShowDialog('Copy Macro', 'You must have an active maro to copy', mtInformation, [mbOK], DEFAULT_DIAG_HEIGHT_RGB);
  end;
  SetHovered(sender, false, true);
end;

procedure TFormMainAdv360.btnPasteClick(Sender: TObject);
begin
  if (IsKeyLoaded) then
  begin
    ResetPopupMenuMacro;
    if (activeKbKey.ActiveMacro <> nil) and (copiedMacro <> nil) then
    begin
      activeKbKey.IsMacro := true;
      activeKbKey.ActiveMacro.Assign(copiedMacro);
      SetMacroText(true);
      LoadMacro;
      MacroModified := true;
    end;
  end;
  SetHovered(sender, false, true);
end;

procedure TFormMainAdv360.btnBackspaceMacroClick(Sender: TObject);

var
  cursorPos:integer;
  keyIdx: integer;
  aKey: TKey;
  keyText: string;
  isLongText: boolean;
  prevKey: integer;
begin
  if (IsKeyLoaded) and (activeKbKey.IsMacro) then
  begin
    ResetPopupMenuMacro;
    cursorPos := memoMacro.SelStart;
    if (cursorPos > 0) then
    begin
      keyIdx := keyService.GetKeyAtPosition(activeKbKey.ActiveMacro, cursorPos);
      if (keyIdx >= 0) then
      begin
        aKey := activeKbKey.ActiveMacro[keyIdx];
        keyText := keyService.GetSingleKeyText(aKey, isLongText);
        prevKey := GetCursorPrevKey(cursorPos);
        if keyService.RemoveKey(activeKbKey, keyIdx) then
        begin
          MacroModified := true;

          //Erase key from memo
          if (prevKey = -1) then
            memoMacro.SelStart := 0
          else
            memoMacro.SelStart := prevKey;
          memoMacro.SelLength := Length(keyText);
          memoMacro.SelText := '';

          if (prevKey = -1) then
            memoMacro.SelStart := 0
          else
            memoMacro.SelStart := prevKey;
        end;
      end;
    end;
  end;
  SetHovered(sender, false, true);
end;

procedure TFormMainAdv360.btnClearMacroClick(Sender: TObject);
begin
  if (IsKeyLoaded) and (activeKbKey.IsMacro) then
  begin
    ResetPopupMenuMacro;
    memoMacro.Lines.Clear;
    keyService.ClearModifiers;
    if (WindowsComboOn) then
      SetWindowsCombo(true);
    activeKbKey.ActiveMacro.Clear;
    activeKbKey.ActiveMacro.CoTrigger1 := nil;
    ResetMacroCoTriggers;
    MacroModified := true;
  end;
  SetHovered(sender, false, true);
end;

procedure TFormMainAdv360.SetMemoTextColor(aMemo: TRichMemo; aKeysPos: TKeysPos);
var
  i: integer;
begin
  //Reset to default color before setting red (MacOS bug)
  aMemo.SetRangeColor(0, Length(aMemo.Text), clDefault);

  if (aKeysPos <> nil) then
  begin
    for i := 0 to Length(aKeysPos) - 1 do
      aMemo.SetRangeColor(aKeysPos[i].iStart, aKeysPos[i].iEnd - aKeysPos[i].iStart, clRed);
  end;
end;

procedure TFormMainAdv360.SetMacroText(pushCursorToEnd: boolean; cursorPos: integer = -1);
var
  aKeysPos: TKeysPos;
begin
  if (IsKeyLoaded) and (activeKbKey.IsMacro) then
  begin
    //Disable visual effects on Macro before assigning text
    {$ifdef Win32}
    SendMessage(memoMacro.Handle, WM_SETREDRAW, WPARAM(False), 0);
    {$endif}
    {$ifdef Darwin}
    //jm todo SendMessage(memoMacro.Handle, LM_SETREDRAW, WPARAM(False), 0);
    {$endif}

    memoMacro.Text := keyService.GetMacroText(activeKbKey.ActiveMacro, aKeysPos);

    //Replace empty space with special space character
    memoMacro.Text := StringReplace(memoMacro.Text, ' ', AnsiToUtf8(#$e2#$90#$a3), [rfReplaceAll]);
    SetMemoTextColor(memoMacro, aKeysPos);

    //To show the cursor at the end
    if pushCursorToEnd then
    begin
      memoMacro.SelStart := Length(memoMacro.Text);
    end
    else if (cursorPos <> -1) then
    begin
      cursorPos := GetCursorNextKey(cursorPos);
      memoMacro.SelStart := cursorPos;
    end;

    textMacroInput.Visible := activeKbKey.ActiveMacro.Count = 0;
    //{$ifdef Darwin}  //MacOS
    //memoConfig.SetFocus;
    //{$endif}

    //Enable visual effects on Macro after assigning text
    {$ifdef Win32}
    SendMessage(memoMacro.Handle, WM_SETREDRAW, WPARAM(True), 0);
    {$endif}
    {$ifdef Darwin}
    //jm todo SendMessage(memoMacro.Handle, LM_SETREDRAW, WPARAM(True), 0);
    {$endif}

    memoMacro.Repaint;
  end
  else
    textMacroInput.Visible := IsKeyLoaded;
end;

procedure TFormMainAdv360.SetWindowsCombo(value: boolean);
var
  hideNotif: integer;
begin
  value := value and EditingMacro;

  WindowsComboOn := value;
  if not value then
  begin
    keyService.RemoveModifier(VK_LWIN);
    keyService.RemoveModifier(VK_RWIN);
    btnWindowsCombos.Down := false;
    SetHovered(btnWindowsCombos, false, true);
  end
  else
  begin
    btnWindowsCombos.Down := true;
    SetHovered(btnWindowsCombos, true, true);
    keyService.AddModifier(VK_LWIN);
    if (ShowNotification(fileService.AppSettings.WindowsComboMsg)) then
    begin
      hideNotif := ShowDialog('Windows Combination Active', 'Now press the key(s) you wish to combine with the Windows key in your macro. Then deselect Windows Combination from the Special Actions menu if you wish to continue programming or click Accept.',
        mtInformation, [mbOK], DEFAULT_DIAG_HEIGHT_RGB, nil, 'Hide this notification?');

      if (hideNotif >= DISABLE_NOTIF) then
      begin
        fileService.SetWindowsComboMsg(true);
        fileService.SaveAppSettings;
      end;
    end;

    memoMacro.SetFocus;
  end;
end;

procedure TFormMainAdv360.MoveComponents(leftIdx: integer; pixels: integer);
begin
//var
//  i: integer;
//  component: TControl;
//begin
//  for i := 0 to Self.ComponentCount - 1 do
//  begin
//    if (Self.Components[i] is TControl) and
//    //((Self.Components[i] as TControl).Parent <> pnlTop) and
//    (Self.Components[i] <> btnMinimize) and
//    (Self.Components[i] <> btnMaximize) and
//    (Self.Components[i] <> btnClose) and
//    (Self.Components[i] <> lblBottomInfo) and
//    (Self.Components[i] <> imgSmartSet1) and
//    (Self.Components[i] <> imgSmartSet2)
//    then
//    begin
//      component := (Self.Components[i] as TControl);
//      if (component.Left >= leftIdx) then
//        component.Left := component.Left + pixels;
//    end;
//  end;
end;

procedure TFormMainAdv360.openFirwareWebsite(Sender: TObject);
begin
  OpenUrl(ADV360_FIRMWARE);
end;

procedure TFormMainAdv360.SetHovered(obj: TObject; hovered: boolean;
  forceNormal: boolean);
var
  i:integer;
  hoveredObj: THoveredObj;
  stayHovered: boolean;
begin
  for i := 0 to hoveredList.Count - 1 do
  begin
    hoveredObj := (hoveredList.Items[i] as THoveredObj);
    if hoveredObj.Obj = obj then
    begin
      stayHovered := false;

      //Check if button is down if setting back to normal
      if (obj is TColorSpeedButtonCS) and not(forceNormal) then
        stayHovered := ((obj as TColorSpeedButtonCS).Down) or ((obj as TColorSpeedButtonCS).HelpKeyword = 'DOWN');

      if (hovered or stayHovered) then
        LoadButtonImage(hoveredObj.Obj, hoveredObj.ImgList, hoveredObj.HoveredIdx)
      else
        LoadButtonImage(hoveredObj.Obj, hoveredObj.ImgList, hoveredObj.NormalIdx);

      break;
    end;
  end;
end;

procedure TFormMainAdv360.SetMousePosition(x, y: integer);
var
  MousePos: TPoint;
begin
  MousePos.X := self.Left + x;
  MousePos.Y := self.Top + y;
  Mouse.CursorPos := MousePos;
end;

procedure TFormMainAdv360.ObjectMouseEnter(Sender: TObject);
begin
  SetHovered(sender, true);
end;

procedure TFormMainAdv360.ObjectMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  SetHovered(sender, true);
end;

procedure TFormMainAdv360.ObjectMouseExit(Sender: TObject);
begin
  SetHovered(sender, false);
end;

//End macro section

initialization

end.
