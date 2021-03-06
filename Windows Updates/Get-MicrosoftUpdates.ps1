Function Get-MicrosoftUpdates
{   
    Param(        
            $NumberOfUpdates,
            [switch]$all
         )
    $Session = New-Object -ComObject Microsoft.Update.Session  
    $Searcher = $Session.CreateUpdateSearcher()  
    if($all)
        {      
            $HistoryCount = $Searcher.GetTotalHistoryCount()      
            $Searcher.QueryHistory(0,$HistoryCount)  }  
        Else { $Searcher.QueryHistory(0,$NumberOfUpdates) }
    } #end Get-MicrosoftUpdates

Get-MicrosoftUpdates -All