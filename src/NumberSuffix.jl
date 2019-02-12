module NumberSuffix

    export SuffixIt

    function SuffixIt(num)::String
        if (typeof(num)!=Int64)
            throw(TypeError(num,"cannot suffix this type of argument",Int64))
        end
        if (num<0)
            throw(DomainError(x, "argument must be nonnegative"))
        end
        suffixedNumber=string(num)
        lastDigit=num%10
        if (lastDigit==0 || lastDigit>=4)
            suffixedNumber=suffixedNumber*"th"
        elseif (lastDigit==1)
            suffixedNumber=suffixedNumber*"st"
        elseif (lastDigit==2)
            suffixedNumber=suffixedNumber*"nd"
        else
            suffixedNumber=suffixedNumber*"rd"
        end
        return suffixedNumber
    end

end