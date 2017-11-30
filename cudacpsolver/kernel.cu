#pragma once

#include <sstream>
#include <string>
#include <iostream>
#include "../include/XCSP3PrintCallbacks.h"
#include "../include/HModel.h"
#include "../include/BMFileParser.h"

using namespace cudacp;
using namespace std;
//#define LOGFILE

const int TimeLimit = 600000;
const string x_path = "BMPath.xml";

int main() {
	string bm_path;
	if (FindBMPath(x_path))
		bm_path = _bm_path;
	cout << bm_path << endl;
	HModel *hm = new HModel();
	GetHModel(bm_path, hm);
	delete hm;
	return 0;

}