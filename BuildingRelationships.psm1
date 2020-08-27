function Build-Relationship {
	Invoke-RestMethod https://buildingrelationships.dev | Select-Object synergy, objective
}
