# Color code text using ASCI escape characters \e(code)m text \e0m
def colorize(text, color_code)
	return "#{color_code}#{text}\e[0m"
end
# foreground color
def black(text); colorize(text, "\e[30m"); end
def red(text); colorize(text, "\e[31m"); end
def green(text); colorize(text, "\e[32m"); end
def brown(text); colorize(text, "\e[33m"); end
def blue(text); colorize(text, "\e[34m"); end
def magenta(text); colorize(text, "\e[35m"); end
def cyan(text); colorize(text, "\e[36m"); end
def gray(text); colorize(text, "\e[37m"); end

# Background
def black_back(text); colorize(text, "\e[40m"); end
def red_back(text); colorize(text, "\e[41m"); end
def green_back(text); colorize(text, "\e[42m"); end
def brown_back(text); colorize(text, "\e[43m"); end
def blue_back(text); colorize(text, "\e[44m"); end
def magenta(_backtext); colorize(text, "\e[45m"); end
def cyan_back(text); colorize(text, "\e[46m"); end
def gray_back(text); colorize(text, "\e[47m"); end