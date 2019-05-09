{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns #-}

import qualified Data.Text.Lazy                as T

type Word = T.Text


data Token = Word | ArrowLeft | ArrowRight | If deriving( Show )

tokenizeSentence :: T.Text -> [Token]
tokenizeSentence sent = case nextToken of
    Just If         -> If : (tokenizeSentence (T.drop 3 sent))
    Just ArrowLeft  -> ArrowLeft : (tokenizeSentence (T.drop 3 sent))
    Just ArrowRight -> ArrowRight : (tokenizeSentence (T.drop 3 sent))
    Nothing         -> []
    where nextToken = tokenizeWord sent

tokenizeWord :: T.Text -> Maybe Token
tokenizeWord x = if (T.length x) == 0
    then Nothing
    else if (T.head x == ' ') || (T.head x == '\n')
        then tokenizeWord (T.tail x)
        else if isNextWord "if"
            then Just If
            else if isNextWord "<-"
                then Just ArrowLeft
                else if isNextWord "->" then Just ArrowRight else Nothing
    where isNextWord = isNextWordOf x

test = isNextWordOf "if afjkasd" "if"
tesdt = tokenizeWord "if afjkasd"


isNextWordOf :: T.Text -> T.Text -> Bool
isNextWordOf sentence word = (T.snoc word ' ') == firstLengthLetters
  where
    wordLength         = T.length word
    firstLengthLetters = T.take (wordLength + 1) sentence
