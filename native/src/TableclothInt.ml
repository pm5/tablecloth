type t = int

include TableclothComparator.Make (struct
  type nonrec t = t

  let compare = compare
end)

let minimumValue = Base.Int.min_value

let minimum_value = minimumValue

let maximumValue = Base.Int.max_value

let maximum_value = maximumValue

let zero = 0

let one = 1

let add = ( + )

let ( + ) = ( + )

let subtract = ( - )

let ( - ) = ( - )

let multiply = ( * )

let ( * ) = multiply

let divide n ~by = n / by

let ( / ) = ( / )

let ( /. ) = Base.Int.( // )

let power ~base ~exponent = Base.Int.(base ** exponent)

let ( ** ) = Base.Int.( ** )

let negate = ( ~- )

let ( ~- ) = ( ~- )

let modulo n ~by = (if n < 0 then 2 * abs n else n) mod by

let ( mod ) n by = modulo n ~by

let remainder n ~by = Base.Int.rem n by

let maximum = Base.Int.max

let minimum = Base.Int.min

let absolute n = if n < 0 then n * -1 else n

let isEven n = n mod 2 = 0

let is_even = isEven

let isOdd n = n mod 2 <> 0

let is_odd = isOdd

let clamp n ~lower ~upper =
  if upper < lower
  then
    raise
      (Invalid_argument
         ( "~lower:"
         ^ Base.Int.to_string lower
         ^ " must be less than or equal to ~upper:"
         ^ Base.Int.to_string upper ) )
  else max lower (min upper n)


let inRange n ~lower ~upper =
  if upper < lower
  then
    raise
      (Invalid_argument
         ( "~lower:"
         ^ Base.Int.to_string lower
         ^ " must be less than or equal to ~upper:"
         ^ Base.Int.to_string upper ) )
  else n >= lower && n < upper


let in_range = inRange

let toFloat = Base.Int.to_float

let to_float = toFloat

let toString = Base.Int.to_string

let to_string = toString

let fromString str = try Some (int_of_string str) with _ -> None

let from_string = fromString

let equal = ( = )

let compare = compare
