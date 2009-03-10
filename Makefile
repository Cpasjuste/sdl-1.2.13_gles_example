NAME	  = sdl_gles_test
CC        = gcc

CFLAGS    = `sdl-config --cflags` -mcpu=cortex-a8 -DHAVE_OPENGL_ES
LIBS	  = `sdl-config --libs` -lGLES_CM

INCLUDES  = -I. `sdl-config --cflags`

OBJECTS   = sdl_gles_test.o


all: $(NAME)

$(NAME): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) $(LIBS) -o $@

.cc.o:
	$(CC) -c $(CFLAGS) $(INCLUDES) $< -o $@

clean:
	rm -f $(OBJECTS) $(NAME)
