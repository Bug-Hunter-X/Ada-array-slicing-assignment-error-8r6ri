```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   B : My_Array;
begin
   -- Correct way to copy a slice of an array:
   B(1..5) := A(1..5);
   -- Another correct way using an array aggregate:
   -- B := (others => 0);  -- Initialize B to all zeros
   -- B(1..5) := A(1..5);
   -- Or you can use a loop for greater control
   -- for i in 1..5 loop
   --   B(i) := A(i);
   -- end loop;
end Example;
```