uses
  System;
begin
	var ulNumber : Uint64;
	var nDividers := 0;
	Console.WriteLine('Input an integer positive number');
	UInt64.TryParse(Console.ReadLine(), ulNumber);
	Console.WriteLine($'The number {ulNumber} has the folowing dividers:');
	for var i : Uint64 := 1 To ulNumber do
  begin
		if ulNumber mod i = 0 then
    begin
			Console.Write('{0} ', i);
			inc(nDividers);
		end;
	end;
	Console.WriteLine();
  case nDividers of
   0, 1:
    Console.WriteLine($'The number {ulNumber} is neither composite nor prime');
   2:
    Console.WriteLine($'The number {ulNumber} is prime');
  else
    Console.WriteLine($'The number {ulNumber} is composite');
  end;
	Console.WriteLine();
	Console.Read()
end.
