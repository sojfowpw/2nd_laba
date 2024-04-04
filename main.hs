main :: IO ()
main = do
  sentence <- getLine --ввод строки
  let result = if all (`elem` sentence) ['a'..'z'] then "true" else "false" --проверка, содержатся ли все буквы в строке
  putStrLn result
