��    .      �  =   �      �  &   �  4       M  .   a  U  �     �
     �
          4     Q  E   p  A   �  )   �     "     1  !   @  0   b  ?   �     �  9   �     &      B  "   c  $   �     �     �     �     �  %     %   D  &   j  0   �  0   �  1   �  E   %  %   k  !   �     �  '   �  #   �  &     *   C  1   n     �     �  X  �  1   *  7   \  B  �  6   �  t       �      �  !   �     �  !   �  N     D   m  1   �     �     �  (     >   5  K   t     �  D   �     #  #   C  %   g  '   �     �     �  '   �  +     *   G  *   r  +   �  0   �  0   �  1   +  Q   ]  /   �  (   �  %      *   .   *   Y   /   �   &   �   G   �       #!     D!                              %            !   (             #           '                 $           &   
          )      -                           "   	      ,             .          *                 +                    output file remains in '%s'
           which is the target of symbolic link '%s'
  -F, --follow-symlink  follow symbolic links and convert the targets
 -R, --replace-symlink replace symbolic links with converted files
                       (original target files remain unchanged)
 -S, --skip-symlink    keep symbolic links and targets unchanged (default)
  -V, --version         display version number
 %s %s (%s)
Usage: %s [options] [file ...] [-n infile outfile ...]
 -ascii                convert only line breaks (default)
 -iso                  conversion between DOS and ISO-8859-1 character set
   -1252               Use Windows code page 1252 (Western European)
   -437                Use DOS code page 437 (US) (default)
   -850                Use DOS code page 850 (Western European)
   -860                Use DOS code page 860 (Portuguese)
   -863                Use DOS code page 863 (French Canadian)
   -865                Use DOS code page 865 (Nordic)
 -7                    Convert 8 bit characters to 7 bit space
 -c, --convmode        conversion mode
   convmode            ascii, 7bit, iso, mac, default to ascii
 -f, --force           force conversion of binary files
 -h, --help            give this help
 -k, --keepdate        keep output file date
 -L, --license         display software license
 -l, --newline         add additional newline
 -n, --newfile         write to new file
   infile              original file in new file mode
   outfile             output file in new file mode
 -o, --oldfile         write to old file
   file ...            files to convert in old file mode
 -q, --quiet           quiet mode, suppress all warnings
                       always on in stdio mode
 -s, --safe            skip binary files (default)
 Cygwin version.
 DOS 16 bit version (TURBOC).
 DOS 16 bit version (WATCOMC).
 DOS 32 bit version (DJGPP).
 DOS 32 bit version (WATCOMC).
 Failed to change the owner and group of temporary output file %s: %s
 Failed to change the permissions of temporary output file %s: %s
 Failed to open temporary output file: %s
 MSYS version.
 OS/2 version.
 Skipping %s, not a regular file.
 Skipping %s, output file %s is a symbolic link.
 Skipping %s, target of symbolic link %s is not a regular file.
 Skipping binary file %s
 Skipping symbolic link %s, target is not a regular file.
 Skipping symbolic link %s.
 Windows 32 bit version (MinGW).
 Windows 32 bit version (WATCOMC).
 Windows 64 bit version (MinGW-w64).
 With native language support.
 active code page: %d
 can not write to output file
 code page %d is not supported.
 converting file %s to DOS format ...
 converting file %s to Mac format ...
 converting file %s to Unix format ...
 converting file %s to file %s in DOS format ...
 converting file %s to file %s in Mac format ...
 converting file %s to file %s in Unix format ...
 error: Value of environment variable DOS2UNIX_LOCALEDIR is too long.
 invalid %s conversion mode specified
 option '%s' requires an argument
 problems converting file %s
 problems converting file %s to file %s
 problems renaming '%s' to '%s': %s
 problems resolving symbolic link '%s'
 program error, invalid conversion mode %d
 target of file %s not specified in new file mode
 using %s as temporary file
 using code page %d.
 Project-Id-Version: dos2unix
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2012-03-08 21:14+0100
PO-Revision-Date: 2011-06-20 09:13+0200
Last-Translator:  <jfreyreg@gmail.com>
Language-Team: Spanish
Language: 
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
           el archivo de salida permanece en '%s'
           cual es el destino del enlace simb�lico '%s'
  -F, --follow-symlink  sigue los enlaces simb�licos y convierte los destinos
 -R, --replace-symlink reemplaza los enlaces simb�licos con los archivos convertidos
                       (los archivos destino originales no son alterados)
 -S, --skip-symlink    no altera los enlaces simb�licos ni sus destinos (por defecto)
  -V, --version         despliega el n�mero de versi�n
 %s %s (%s)
Uso: %s [par�metros] [archivo ...] [-n archivo_de_entrada archivo_de_salida ...]
 -ascii                solamente convierte los saltos de l�nea (por defecto)
 -iso                  conversi�n entre DOS y el conjunto de caracteres ISO-8859-1
   -1252               Usa la p�gina de c�digos Windows 1252 (Europa Occidental)
   -437                Usa la p�gina de c�digos DOS 437 (EE. UU.) (por defecto)
   -850                Usa la p�gina de c�digos DOS 850 (Europa Occidental)
   -860                Usa la p�gina de c�digos DOS 860 (Portugu�s)
   -863                Usa la p�gina de c�digos DOS 863 (Francocanadiense)
   -865                Usa la p�gina de c�digos DOS 865 (N�rdico)
 -7                    Convierte caracteres de 8 bits al espacio de 7 bits
 -c, --convmode        modo de conversi�n
   modo_de_conversion  ascii, 7bit, iso, mac, por defecto es ascii
 -f, --force           fuerza la conversi�n de archivos binarios
 -h, --help            arroja esta ayuda
 -k, --keepdate        conserva la fecha en el archivo de salida
 -L, --license         muestra la licencia del programa
 -l, --newline         a�ade salto de l�nea adicional
 -n, --newfile         escribe a un nuevo archivo
   archivo_de_entrada  archivo original en el modo de archivo nuevo
   archivo_de_salida   archivo de salida en el modo de archivo nuevo
 -o, --oldfile         escribe al archivo antiguo
   archivo ...         archivos a convertir en el modo de archivo antiguo
 -q, --quiet           modo silencioso, suprime todas las advertencias
                       siempre en modo stdio
 -s, --safe            ignora archivos binarios (por defecto)
 Versi�n para Cygwin.
 Versi�n DOS de 16 bit (TURBOC).
 Versi�n DOS de 16 bit (WATCOMC).
 Versi�n DOS de 32 bit (DJGPP).
 Versi�n DOS de 32 bit (WATCOMC).
 Error al cambiar el propietario y grupo del archivo temporal de salida %s: %s
 Error al cambiar los permisos del archivo temporal de salida %s: %s
 Fall� al abrir el archivo de salida temporal: %s
 Versi�n para MSYS.
 Versi�n para OS/2.
 Ignorando %s, no es un archivo regular.
 Ignorando %s, el archivo de salida %s es un enlace simb�lico.
 Ignorando %s, el destino del enlace simb�lico %s no es un archivo regular.
 Ignorando archivo binario %s
 Ignorando enlace simb�lico %s, el destino no es un archivo regular.
 Ignorando enlace simb�lico %s.
 Versi�n Windows de 32 bit (MinGW).
 Versi�n Windows de 32 bit (WATCOMC).
 Versi�n Windows de 64 bit (MinGW-w64).
 Con soporte de idioma materno.
 P�gina de c�digos activa: %d
 no puedo escribir al archivo de salida
 La p�gina de c�digos %d no est� soportada.
 convirtiendo archivo %s a formato DOS ...
 convirtiendo archivo %s a formato Mac ...
 convirtiendo archivo %s a formato Unix ...
 convirtiendo archivo %s a %s en formato DOS ...
 convirtiendo archivo %s a %s in formato Mac ...
 convirtiendo archivo %s a %s in formato Unix ...
 error: El valor de la variable de entorno DOS2UNIX_LOCALEDIR es demasiado largo.
 modo de conversi�n %s especificado es inv�lido
 el par�metro '%s' requiere un argumento
 problemas convirtiendo el archivo %s
 problemas al convertir el archivo %s a %s
 problemas al renombrar '%s' como '%s': %s
 problemas al resolver el enlace simb�lico '%s'
 error, modo de conversi�n %d inv�lido
 el destino del archivo %s no se especific� en el modo de archivo nuevo
 usando %s como archivo temporal
 usando p�gina de c�digos %d.
 