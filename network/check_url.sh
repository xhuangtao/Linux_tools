#!/bin/bash
#check url and return the http code
        HTTP_CODE=$(curl -o /dev/null --connect-timeout 3 -s -w "%{http_code}" $1)
        case $HTTP_CODE in
                 "000")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is   Unable to access!" 
                 ;;
                 "100")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is   Continue!" 
                 ;;
                 "101")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Switching Protocols!" 
                 ;;
                 "200")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  OK!" 
                 ;;
                 "201")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Created!" 
                 ;;
                 "202")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Accepted!" 
                 ;;
                 "203")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Non-Authoritative Information!" 
                 ;;
                 "204")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  No Content!" 
                 ;;
                 "205")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Reset Content!" 
                 ;;
                 "206")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Partial Content!" 
                 ;;
                 "300")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Multiple Choices!" 
                 ;;
                 "301")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Moved Permanently!" 
                 ;;
                 "302")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Found!" 
                 ;;
                 "303")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  See Other!" 
                 ;;
                 "304")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Not Modified!" 
                 ;;
                 "305")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Use Proxy!" 
                 ;;
                 "306")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  (Unused)!" 
                 ;;
                 "307")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Temporary Redirect!" 
                 ;;
                 "400")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Bad Request!" 
                 ;;
                 "401")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Unauthorized!" 
                 ;;
                 "402")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Payment Required!" 
                 ;;
                 "403")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Forbidden!" 
                 ;;
                 "404")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Not Found!" 
                 ;;
                 "405")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Method Not Allowed!" 
                 ;;
                 "406")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Not Acceptable!" 
                 ;;
                 "407")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Proxy Authentication Required!" 
                 ;;
                 "408")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Request Timeout!" 
                 ;;
                 "409")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Conflict!" 
                 ;;
                 "410")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Gone!" 
                 ;;
                 "411")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Length Required!" 
                 ;;
                 "412")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Precondition Failed!" 
                 ;;
                 "413")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Request Entity Too Large!" 
                 ;;
                 "414")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Request-URI Too Long!" 
                 ;;
                 "415")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Unsupported Media Type!" 
                 ;;
                 "416")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Requested Range Not Satisfiable!" 
                 ;;
                 "417")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Expectation Failed!" 
                 ;;
                 "500")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Internal Server Error!" 
                 ;;
                 "501")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Not Implemented!" 
                 ;;
                 "502")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Bad Gateway!" 
                 ;;
                 "503")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Service Unavailable!" 
                 ;;
                 "504")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  Gateway Timeout!" 
                 ;;
                 "505")
                 echo -e "The HTTP_CODE is"" \033[31m$HTTP_CODE.\033[0m" " $1 is  HTTP Version Not Supported!" 
                 ;;
                 *)
                 echo "$URL_LIST  Access failure!!"
                 ;;
                esac
