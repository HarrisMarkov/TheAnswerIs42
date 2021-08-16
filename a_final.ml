
let rec multi2digits x =
  if x > 0 && x < 10 then x
  else if x > 10 then
    let y = x mod 10 in 
    let z = (x mod 100)/10 in y * z
  else 0;;


let rec regras m = 
  if m <= 42 || m >= 1000000 then
    if m == 42 then 0
    else 1000000
    let nr1 = (if (m mod 2 == 0 && (m/2) >= 42) then (1 + regras (m/2)) else 1000000) in
    let multi = multi2digits m in
    let nr2 = (if (m mod 3 == 0 || m mod 4 == 0) && (multi > 0) && ((m - multi) >= 42) && (multi < m) then (1 + regras (m - multi)) else 1000000) in
    let nr3 = (if (m mod 5 == 0 && (m - 42) >= 42) then (1 + regras (m - 42)) else 1000000) in
    if ((nr1 <= nr2) && (nr1 <= nr3) && (nr1 <= 1000000)) then nr1
    else if ((nr2 <= nr1) && (nr2 <= nr3) && (nr2 <= 1000000)) then nr2
    else if ((nr3 <= nr1) && (nr3 <= nr2) && (nr3 <= 1000000)) then nr3
    else 1000000;;

let m = Scanf.scanf "%d" (fun a -> a)

let x = regras m

let () = if x >= 1000000 then Printf.printf "BAD LUCK\n" else Printf.printf "%d\n" x
