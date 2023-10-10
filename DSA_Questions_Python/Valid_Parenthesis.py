class Valid_Parenthesis:
    def isValid(self, s: str) -> bool:
        stack = []

        if not s or s[0] == ')' or s[0] == '}' or s[0] == ']':
            return False

        for ch in s:
            if ch == '(' or ch == '{' or ch == '[':

                stack.append(ch)

            else:

                if not stack:

                    return False
                
                if (stack[-1] == '(' and ch == ')') or \
                   (stack[-1] == '{' and ch == '}') or \
                   (stack[-1] == '[' and ch == ']'):
                    stack.pop()
                else:
                    return False

        return not stack

