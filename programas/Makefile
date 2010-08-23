FEXT = f95
FORTRANFILES = $(wildcard *.$(FEXT))
TARGETS = $(basename $(FORTRANFILES))
FC = gfortran
FCFLAGS = -ffree-form

all: $(TARGETS)
%: %.$(FEXT)
	$(FC) $(FCFLAGS) $< -o $@
clean:
	rm -f $(TARGETS) *.o

.PHONY: clean all
