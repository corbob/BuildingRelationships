function Build-Relationship {
	$output = [PSCustomObject](Invoke-RestMethod https://buildingrelationships.dev)
	$output.pstypenames.Clear()
	$output.pstypenames.Add('BuiltRelationship')
	$output
}

function Build-SynergizedRelationship {
	[CmdletBinding()]
	[Alias('Synergize-Relationship')]
	[OutputType('System.String')]
	param()
	Build-Relationship | Select-Object -ExpandProperty synergy
}