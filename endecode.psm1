function ConvertTo-UrlEncodeString
{
    param (
        [Parameter(Mandatory = $true)]
        [string] $String,

        [Parameter(Mandatory = $false)]
        # Encoding Class
        # https://docs.microsoft.com/en-us/dotnet/api/system.text.encoding
        [ValidateSet('IBM037', 'IBM437', 'IBM500', 'ASMO-708', 'DOS-720', 'ibm737', 'ibm775', 'ibm850', 'ibm852', 'IBM855', 'ibm857', 'IBM00858', 'IBM860', 'ibm861', 'DOS-862', 'IBM863', 'IBM864', 'IBM865', 'cp866', 'ibm869', 'IBM870', 'windows-874', 'cp875', 'shift_jis', 'gb2312', 'ks_c_5601-1987', 'big5', 'IBM1026', 'IBM01047', 'IBM01140', 'IBM01141', 'IBM01142', 'IBM01143', 'IBM01144', 'IBM01145', 'IBM01146', 'IBM01147', 'IBM01148', 'IBM01149', 'utf-16', 'utf-16BE', 'windows-1250', 'windows-1251', 'Windows-1252', 'windows-1253', 'windows-1254', 'windows-1255', 'windows-1256', 'windows-1257', 'windows-1258', 'Johab', 'macintosh', 'x-mac-japanese', 'x-mac-chinesetrad', 'x-mac-korean', 'x-mac-arabic', 'x-mac-hebrew', 'x-mac-greek', 'x-mac-cyrillic', 'x-mac-chinesesimp', 'x-mac-romanian', 'x-mac-ukrainian', 'x-mac-thai', 'x-mac-ce', 'x-mac-icelandic', 'x-mac-turkish', 'x-mac-croatian', 'utf-32', 'utf-32BE', 'x-Chinese-CNS', 'x-cp20001', 'x-Chinese-Eten', 'x-cp20003', 'x-cp20004', 'x-cp20005', 'x-IA5', 'x-IA5-German', 'x-IA5-Swedish', 'x-IA5-Norwegian', 'us-ascii', 'x-cp20261', 'x-cp20269', 'IBM273', 'IBM277', 'IBM278', 'IBM280', 'IBM284', 'IBM285', 'IBM290', 'IBM297', 'IBM420', 'IBM423', 'IBM424', 'x-EBCDIC-KoreanExtended', 'IBM-Thai', 'koi8-r', 'IBM871', 'IBM880', 'IBM905', 'IBM00924', 'EUC-JP', 'x-cp20936', 'x-cp20949', 'cp1025', 'koi8-u', 'iso-8859-1', 'iso-8859-2', 'iso-8859-3', 'iso-8859-4', 'iso-8859-5', 'iso-8859-6', 'iso-8859-7', 'iso-8859-8', 'iso-8859-9', 'iso-8859-13', 'iso-8859-15', 'x-Europa', 'iso-8859-8-i', 'iso-2022-jp', 'csISO2022JP', 'iso-2022-jp', 'iso-2022-kr', 'x-cp50227', 'euc-jp', 'EUC-CN', 'euc-kr', 'hz-gb-2312', 'GB18030', 'x-iscii-de', 'x-iscii-be', 'x-iscii-ta', 'x-iscii-te', 'x-iscii-as', 'x-iscii-or', 'x-iscii-ka', 'x-iscii-ma', 'x-iscii-gu', 'x-iscii-pa', 'utf-7', 'utf-8')]
        [string] $Encoding = 'utf-8'
    )

    [System.Web.HttpUtility]::UrlEncode($String, [System.Text.Encoding]::GetEncoding($Encoding))
}

function ConvertFrom-UrlEncodeString
{
    param (
        [Parameter(Mandatory = $true)]
        [string] $String,

        [Parameter(Mandatory = $false)]
        # Encoding Class
        # https://docs.microsoft.com/en-us/dotnet/api/system.text.encoding
        [ValidateSet('IBM037', 'IBM437', 'IBM500', 'ASMO-708', 'DOS-720', 'ibm737', 'ibm775', 'ibm850', 'ibm852', 'IBM855', 'ibm857', 'IBM00858', 'IBM860', 'ibm861', 'DOS-862', 'IBM863', 'IBM864', 'IBM865', 'cp866', 'ibm869', 'IBM870', 'windows-874', 'cp875', 'shift_jis', 'gb2312', 'ks_c_5601-1987', 'big5', 'IBM1026', 'IBM01047', 'IBM01140', 'IBM01141', 'IBM01142', 'IBM01143', 'IBM01144', 'IBM01145', 'IBM01146', 'IBM01147', 'IBM01148', 'IBM01149', 'utf-16', 'utf-16BE', 'windows-1250', 'windows-1251', 'Windows-1252', 'windows-1253', 'windows-1254', 'windows-1255', 'windows-1256', 'windows-1257', 'windows-1258', 'Johab', 'macintosh', 'x-mac-japanese', 'x-mac-chinesetrad', 'x-mac-korean', 'x-mac-arabic', 'x-mac-hebrew', 'x-mac-greek', 'x-mac-cyrillic', 'x-mac-chinesesimp', 'x-mac-romanian', 'x-mac-ukrainian', 'x-mac-thai', 'x-mac-ce', 'x-mac-icelandic', 'x-mac-turkish', 'x-mac-croatian', 'utf-32', 'utf-32BE', 'x-Chinese-CNS', 'x-cp20001', 'x-Chinese-Eten', 'x-cp20003', 'x-cp20004', 'x-cp20005', 'x-IA5', 'x-IA5-German', 'x-IA5-Swedish', 'x-IA5-Norwegian', 'us-ascii', 'x-cp20261', 'x-cp20269', 'IBM273', 'IBM277', 'IBM278', 'IBM280', 'IBM284', 'IBM285', 'IBM290', 'IBM297', 'IBM420', 'IBM423', 'IBM424', 'x-EBCDIC-KoreanExtended', 'IBM-Thai', 'koi8-r', 'IBM871', 'IBM880', 'IBM905', 'IBM00924', 'EUC-JP', 'x-cp20936', 'x-cp20949', 'cp1025', 'koi8-u', 'iso-8859-1', 'iso-8859-2', 'iso-8859-3', 'iso-8859-4', 'iso-8859-5', 'iso-8859-6', 'iso-8859-7', 'iso-8859-8', 'iso-8859-9', 'iso-8859-13', 'iso-8859-15', 'x-Europa', 'iso-8859-8-i', 'iso-2022-jp', 'csISO2022JP', 'iso-2022-jp', 'iso-2022-kr', 'x-cp50227', 'euc-jp', 'EUC-CN', 'euc-kr', 'hz-gb-2312', 'GB18030', 'x-iscii-de', 'x-iscii-be', 'x-iscii-ta', 'x-iscii-te', 'x-iscii-as', 'x-iscii-or', 'x-iscii-ka', 'x-iscii-ma', 'x-iscii-gu', 'x-iscii-pa', 'utf-7', 'utf-8')]
        [string] $Encoding = 'utf-8'
    )

    [System.Web.HttpUtility]::UrlDecode($String, [System.Text.Encoding]::GetEncoding($Encoding))
}

function ConvertTo-Base64EncodeString
{
    param (
        [Parameter(Mandatory = $true)]
        [string] $String,

        [Parameter(Mandatory = $false)]
        # Encoding Class
        # https://docs.microsoft.com/en-us/dotnet/api/system.text.encoding
        [ValidateSet('IBM037', 'IBM437', 'IBM500', 'ASMO-708', 'DOS-720', 'ibm737', 'ibm775', 'ibm850', 'ibm852', 'IBM855', 'ibm857', 'IBM00858', 'IBM860', 'ibm861', 'DOS-862', 'IBM863', 'IBM864', 'IBM865', 'cp866', 'ibm869', 'IBM870', 'windows-874', 'cp875', 'shift_jis', 'gb2312', 'ks_c_5601-1987', 'big5', 'IBM1026', 'IBM01047', 'IBM01140', 'IBM01141', 'IBM01142', 'IBM01143', 'IBM01144', 'IBM01145', 'IBM01146', 'IBM01147', 'IBM01148', 'IBM01149', 'utf-16', 'utf-16BE', 'windows-1250', 'windows-1251', 'Windows-1252', 'windows-1253', 'windows-1254', 'windows-1255', 'windows-1256', 'windows-1257', 'windows-1258', 'Johab', 'macintosh', 'x-mac-japanese', 'x-mac-chinesetrad', 'x-mac-korean', 'x-mac-arabic', 'x-mac-hebrew', 'x-mac-greek', 'x-mac-cyrillic', 'x-mac-chinesesimp', 'x-mac-romanian', 'x-mac-ukrainian', 'x-mac-thai', 'x-mac-ce', 'x-mac-icelandic', 'x-mac-turkish', 'x-mac-croatian', 'utf-32', 'utf-32BE', 'x-Chinese-CNS', 'x-cp20001', 'x-Chinese-Eten', 'x-cp20003', 'x-cp20004', 'x-cp20005', 'x-IA5', 'x-IA5-German', 'x-IA5-Swedish', 'x-IA5-Norwegian', 'us-ascii', 'x-cp20261', 'x-cp20269', 'IBM273', 'IBM277', 'IBM278', 'IBM280', 'IBM284', 'IBM285', 'IBM290', 'IBM297', 'IBM420', 'IBM423', 'IBM424', 'x-EBCDIC-KoreanExtended', 'IBM-Thai', 'koi8-r', 'IBM871', 'IBM880', 'IBM905', 'IBM00924', 'EUC-JP', 'x-cp20936', 'x-cp20949', 'cp1025', 'koi8-u', 'iso-8859-1', 'iso-8859-2', 'iso-8859-3', 'iso-8859-4', 'iso-8859-5', 'iso-8859-6', 'iso-8859-7', 'iso-8859-8', 'iso-8859-9', 'iso-8859-13', 'iso-8859-15', 'x-Europa', 'iso-8859-8-i', 'iso-2022-jp', 'csISO2022JP', 'iso-2022-jp', 'iso-2022-kr', 'x-cp50227', 'euc-jp', 'EUC-CN', 'euc-kr', 'hz-gb-2312', 'GB18030', 'x-iscii-de', 'x-iscii-be', 'x-iscii-ta', 'x-iscii-te', 'x-iscii-as', 'x-iscii-or', 'x-iscii-ka', 'x-iscii-ma', 'x-iscii-gu', 'x-iscii-pa', 'utf-7', 'utf-8')]
        [string] $Encoding = 'utf-8'
    )

    $e = [System.Text.Encoding]::GetEncoding($Encoding)
    $bytes = $e.GetBytes($String)
    [System.Convert]::ToBase64String($bytes)
}

function ConvertFrom-Base64EncodeString
{
    param (
        [Parameter(Mandatory = $true)]
        [string] $String,

        [Parameter(Mandatory = $false)]
        # Encoding Class
        # https://docs.microsoft.com/en-us/dotnet/api/system.text.encoding
        [ValidateSet('IBM037', 'IBM437', 'IBM500', 'ASMO-708', 'DOS-720', 'ibm737', 'ibm775', 'ibm850', 'ibm852', 'IBM855', 'ibm857', 'IBM00858', 'IBM860', 'ibm861', 'DOS-862', 'IBM863', 'IBM864', 'IBM865', 'cp866', 'ibm869', 'IBM870', 'windows-874', 'cp875', 'shift_jis', 'gb2312', 'ks_c_5601-1987', 'big5', 'IBM1026', 'IBM01047', 'IBM01140', 'IBM01141', 'IBM01142', 'IBM01143', 'IBM01144', 'IBM01145', 'IBM01146', 'IBM01147', 'IBM01148', 'IBM01149', 'utf-16', 'utf-16BE', 'windows-1250', 'windows-1251', 'Windows-1252', 'windows-1253', 'windows-1254', 'windows-1255', 'windows-1256', 'windows-1257', 'windows-1258', 'Johab', 'macintosh', 'x-mac-japanese', 'x-mac-chinesetrad', 'x-mac-korean', 'x-mac-arabic', 'x-mac-hebrew', 'x-mac-greek', 'x-mac-cyrillic', 'x-mac-chinesesimp', 'x-mac-romanian', 'x-mac-ukrainian', 'x-mac-thai', 'x-mac-ce', 'x-mac-icelandic', 'x-mac-turkish', 'x-mac-croatian', 'utf-32', 'utf-32BE', 'x-Chinese-CNS', 'x-cp20001', 'x-Chinese-Eten', 'x-cp20003', 'x-cp20004', 'x-cp20005', 'x-IA5', 'x-IA5-German', 'x-IA5-Swedish', 'x-IA5-Norwegian', 'us-ascii', 'x-cp20261', 'x-cp20269', 'IBM273', 'IBM277', 'IBM278', 'IBM280', 'IBM284', 'IBM285', 'IBM290', 'IBM297', 'IBM420', 'IBM423', 'IBM424', 'x-EBCDIC-KoreanExtended', 'IBM-Thai', 'koi8-r', 'IBM871', 'IBM880', 'IBM905', 'IBM00924', 'EUC-JP', 'x-cp20936', 'x-cp20949', 'cp1025', 'koi8-u', 'iso-8859-1', 'iso-8859-2', 'iso-8859-3', 'iso-8859-4', 'iso-8859-5', 'iso-8859-6', 'iso-8859-7', 'iso-8859-8', 'iso-8859-9', 'iso-8859-13', 'iso-8859-15', 'x-Europa', 'iso-8859-8-i', 'iso-2022-jp', 'csISO2022JP', 'iso-2022-jp', 'iso-2022-kr', 'x-cp50227', 'euc-jp', 'EUC-CN', 'euc-kr', 'hz-gb-2312', 'GB18030', 'x-iscii-de', 'x-iscii-be', 'x-iscii-ta', 'x-iscii-te', 'x-iscii-as', 'x-iscii-or', 'x-iscii-ka', 'x-iscii-ma', 'x-iscii-gu', 'x-iscii-pa', 'utf-7', 'utf-8')]
        [string] $Encoding = 'utf-8'
    )

    $bytes = [System.Convert]::FromBase64String($String)
    $e = [System.Text.Encoding]::GetEncoding($Encoding)
    $e.GetString($bytes)
}
