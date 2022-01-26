typedef enum Tools Tools;
enum Tools {
    PIERRE, FEUILLE, CISEAUX
};

void ordi (int line, int player, int *ptsOrdi, int *ptsPlayer);
void drawBorders (int start, int sens);
int random();
void score(int line, int player,int ordi, int *ptsOrdi, int *ptsPlayer);
void total (int *ptsOrdi, int *ptsPlayer);
void reset (int *line, int *ptsOrdi, int *ptsPlayer);

