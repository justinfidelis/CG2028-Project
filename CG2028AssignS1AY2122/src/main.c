#include "stdio.h"
#define DATAPOINT 8
#define CENTROID 2
// CG2028 Assignment, Sem 2, AY 2021/22
// (c) CG2028 Teaching Team, ECE NUS, 2021


int classification_cCode(int* arg1, int* arg2, int* arg3);
extern int classification(int* arg1, int* arg2, int* arg3);// reference C implementation
int main(void)
{
	int i,j;

	double points[DATAPOINT][2] = {{8.0, 2.5},
            {10.0, 2.0},
            {9.0, 5.0},
            {4.0, 0.5},
            {2.0, 8.0},
            {5.0, 9.0},
            {6.0, 1.5},
            {4.0, 0.5}};


	double centroids[CENTROID][2] ={ {4.0, 0.5},
            {8.0, 2.5} };


	int points10[DATAPOINT][2];
	int centroids10[CENTROID][2];
	int class[DATAPOINT] = {0,0,0,0,0,0,0,0};

	// Multiply the coordinates by 10 so that the final answers have 1 decimal point
	for (i=0; i<DATAPOINT; i++)
	{
		for (j=0; j<2; j++)
			points10[i][j] = points[i][j]*10;
		printf("point %d: (x:%d, y:%d) \n", i, points10[i][0],points10[i][1]);
	}

	for (i=0; i<CENTROID; i++)
		for (j=0; j<2; j++)
			centroids10[i][j] = centroids[i][j]*10;

	// Call assembly language function to perform classification
	printf( "C  : class %d contains more datapoint \n", classification_cCode(points10,centroids10,class)) ;
	printf( "asm: class %d contains more datapoint \n", classification(points10,centroids10,class)) ;

	while (1); //halt
}
int classification_cCode(int*points,int* centroids, int* class)
{
	int i,j;
	int d[CENTROID][DATAPOINT]; // squared Euclidean distance
	//int d1[DATAPOINT]; // squared Euclidean distance
	int d0_counter=0,d1_counter=0;


	for (i=0; i<DATAPOINT; i++)
	{
		//(*((centroids+i) + j))
		d[0][i] = ((*((points+i*2) + 0))-(*((centroids+0*2) + 0))) * ((*((points+i*2) + 0))-(*((centroids+0*2) + 0)))+ ((*((points+i*2) + 1))-(*((centroids+0*2) + 1)))*((*((points+i*2) + 1))-(*((centroids+0*2) + 1)));
		d[1][i] = ((*((points+i*2) + 0))-(*((centroids+1*2) + 0))) * ((*((points+i*2) + 0))-(*((centroids+1*2) + 0)))+ ((*((points+i*2) + 1))-(*((centroids+1*2) + 1)))*((*((points+i*2) + 1))-(*((centroids+1*2) + 1)));

		if(d[0][i]<d[1][i])
		{
			class[i] = 0;
			d0_counter++;
		}
		else
		{
			class[i] = 1;
			d1_counter++;
		}
	}
	// print all distances
	for (i=0; i<DATAPOINT; i++)
	{
		printf( "point %d = centroid 1-->%d centroid 2 -->%d , class = %d \n",i+1, d[0][i],d[1][i],class[i]) ;
	}
	if(d1_counter>d0_counter)
		return 1;
	else
		return 0;
}

