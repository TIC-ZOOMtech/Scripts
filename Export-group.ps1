# Conectar ao Azure AD
Connect-AzureAD

# Definir o caminho para o arquivo CSV de saÃ­da
$OutputFile = "C:/temp/grupos_e_membros.csv"

# Array para armazenar os resultados
$Results = @()

# Obter todos os grupos do Office 365
$Groups = Get-AzureADGroup -All $true

# Iterar atravÃ©s de cada grupo para obter informaÃ§Ãµes
foreach ($Group in $Groups) {
    $GroupName = $Group.DisplayName
    $GroupId = $Group.ObjectId
    $GroupMembers = Get-AzureADGroupMember -ObjectId $GroupId | Select-Object -ExpandProperty Mail 

    # Verificar se o grupo Ã© um grupo de distribuiÃ§Ã£o
    if ($Group.SecurityEnabled -eq $true) {
        $GroupType = "Grupo de DistribuiÃ§Ã£o"
    } else {
        $GroupType = "Grupo do Office 365"
    }

    # Adicionar informaÃ§Ãµes do grupo ao resultado

    $GroupInfo = New-Object PSObject -Property @{
        "Nome do Grupo" = $GroupName
        "Tipo do Grupo" = $GroupType
        "Membros do Grupo" = ($GroupMembers -join "; ")
    }
    $Results += $GroupInfo
}

# Exportar para CSV
$Results | Export-Csv -Path $OutputFile -NoTypeInformation

# Desconectar do Azure AD apÃ³s a conclusÃ£o (opcional)
Disconnect-AzureAD 
