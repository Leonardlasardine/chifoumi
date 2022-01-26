#include <mygba.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include "main.h"

MULTIBOOT

int main(void) {
   ham_Init();
   ham_InitText(0);
   
   int line = 9;
   int aPressed = 0;
   int bPressed = 0;
   int upPressed = 0;
   int ptsOrdi = 0;
   int ptsPlayer = 0;
   
   ham_DrawText(0, 0, "Pierre feuille ciseaux");
   ham_DrawText(1, 2, "A  Pierre");
   ham_DrawText(1, 3, "B  Feuille");
   ham_DrawText(1, 4, "UP Ciseaux");
   
   ham_DrawText(6, 7, "J1");
   ham_DrawText(20, 7, "ORDI");

   drawBorders(0, 0);
   drawBorders(14, 0);
   drawBorders(29, 0);
   
   drawBorders(6, 1);
   drawBorders(8, 1);
   drawBorders(19, 1);

   while(1) {
       while (line < 17) {
           //A = PIERRE
           if (F_CTRLINPUT_A_PRESSED) {
               aPressed = 1;
           } else {
               if (aPressed) {
                   ham_DrawText(4, line, "Pierre");
                   ordi(line, PIERRE, &ptsOrdi, &ptsPlayer);
                   line += 1;
                   aPressed = 0;
               }
           }
           //B = FEUILLE
           if (F_CTRLINPUT_B_PRESSED) {
               bPressed = 1;
           } else {
               if (bPressed) {
                   ham_DrawText(4, line, "Feuille");
                   ordi(line, FEUILLE, &ptsOrdi, &ptsPlayer);
                   line += 1;
                   bPressed = 0;
               }
           }
           //UP = CISEAUX
           if (F_CTRLINPUT_UP_PRESSED) {
               upPressed = 1;
           } else {
               if (upPressed) {
                   ham_DrawText(4, line, "Ciseaux");
                   ordi(line, CISEAUX, &ptsOrdi, &ptsPlayer);
                   line += 1;
                   upPressed = 0;
               }
           }
       }
       if (line > 16) {
           total(&ptsOrdi, &ptsPlayer);
           
           if (F_CTRLINPUT_A_PRESSED) {
               aPressed = 1;
           } else {
               if (aPressed) {
                   reset(&line, &ptsOrdi, &ptsPlayer);
               }
           }
           if (F_CTRLINPUT_B_PRESSED) {
               bPressed = 1;
           } else {
               if (bPressed) {
                   reset(&line, &ptsOrdi, &ptsPlayer);
               }
           }
           if (F_CTRLINPUT_UP_PRESSED) {
               upPressed = 1;
           } else {
               if (upPressed) {
                   reset(&line, &ptsOrdi, &ptsPlayer);
               }
           }
       }
   }
   return 0;
}

void reset (int *line, int *ptsOrdi, int *ptsPlayer) {
    int i;
    for (i = 9; i < 19; i++) {
        int j;
        for (j = 1; j < 29; j++) {
            ham_DrawText(j, i, " ");
        }
    }
    drawBorders(14, 0);
    *line = 9;
    *ptsPlayer = 0;
    *ptsOrdi = 0;
}

void total (int *ptsOrdi, int *ptsPlayer) {
    char ordi [2];
    sprintf(ordi, "%d", *ptsOrdi);
    char player [2];
    sprintf(player, "%d", *ptsPlayer);

    ham_DrawText(2, 18, player);
    ham_DrawText(16, 18, ordi);

    if (*ptsPlayer > *ptsOrdi) {
        ham_DrawText(4, 18, "GAGNE");
        ham_DrawText(18, 18, "PERDU");
    } else {
        ham_DrawText(18, 18, "GAGNE");
        ham_DrawText(4, 18, "PERDU");
    }
}

void ordi (int line, int player, int *ptsOrdi, int *ptsPlayer) {
    int number = random();
    char tool [8];
    
    if (number == PIERRE){
        sprintf(tool, "%s", "Pierre");
    } else if (number == FEUILLE) {
        sprintf(tool, "%s", "Feuille");
    } else {
        sprintf(tool, "%s", "Ciseaux");
    }

    ham_DrawText(18, line, tool);
    score(line, player, number, ptsOrdi, ptsPlayer);
}

int random() {
    return rand() % 3;
}

void score(int line, int player, int ordi, int *ptsOrdi, int *ptsPlayer) {
    if (player == PIERRE) {
        if (ordi == FEUILLE) {
            ham_DrawText(16, line, "X");
            *ptsOrdi += 1;
        }
        if (ordi == CISEAUX) {
            ham_DrawText(2, line, "X");
            *ptsPlayer += 1;
        }
    }
    if (player == FEUILLE) {
        if (ordi == PIERRE) {
            ham_DrawText(2, line, "X");
            *ptsPlayer += 1;
        }
        if (ordi == CISEAUX) {
            ham_DrawText(16, line, "X");
            *ptsOrdi += 1;
        }
    }
    if (player == CISEAUX) {
        if (ordi == PIERRE) {
            ham_DrawText(16, line, "X");
            *ptsOrdi += 1;
        }
        if (ordi == FEUILLE) {
            ham_DrawText(2, line, "X");
            *ptsPlayer += 1;
        }
    }
}

void drawBorders (int start, int sens) {
    if (sens) {
        int i;
        for (i = 0; i <  29; i++) {
            ham_DrawText(i, start, "/");
        }
    } else {
        int i;
        for (i = 6; i < 20; i++) {
            ham_DrawText(start, i, "/");
        }
    }
}

