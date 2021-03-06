VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "TestResult"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Option Explicit

' Mat's Mug is the original author of this class.
' http://codereview.stackexchange.com/a/62792/41243

Public Enum TestOutcome
    Inconclusive
    Failed
    Succeeded
End Enum

Private Type TTestResult
    TestName As String
    MethodName As String
    TestOutcome As TestOutcome
    Message As String
End Type

Private this As TTestResult

Public Property Get TestOutcome() As TestOutcome
    TestOutcome = this.TestOutcome
End Property

Friend Property Let TestOutcome(ByVal value As TestOutcome)
    this.TestOutcome = value
End Property

Public Property Get Message() As String
    Message = this.Message
End Property

Friend Property Let Message(ByVal value As String)
    this.Message = value
End Property

Public Property Get TestName() As String
    TestName = this.TestName
End Property

Friend Property Let TestName(ByVal value As String)
    this.TestName = value
End Property

Public Property Get MethodName() As String
    MethodName = this.MethodName
End Property

Friend Property Let MethodName(ByVal value As String)
    this.MethodName = value
End Property

Public Function Create(ByVal outcome As TestOutcome, ByVal Message As String, ByVal TestName As String, ByVal MethodName As String) As TestResult

    Dim result As New TestResult
    result.TestOutcome = outcome
    result.Message = Message
    result.TestName = TestName
    result.MethodName = MethodName

    Set Create = result

End Function

