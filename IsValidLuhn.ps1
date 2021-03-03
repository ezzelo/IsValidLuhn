Function IsValidLuhn {
	param ($s)
	$t = 0
	$c = 0
	$i = $s.Length + 1	
	ForEach ($x in $s.ToCharArray()) {
		$t = ($i%2 + 1)*([convert]::ToInt32($x, 10))
		if ($t -gt 9) {
			$t -= 9
		}
		$c += $t
		$i++
	}
	return ($c%10 -eq 0)
}
