# point-cloud-regularization

A structured optimization framework for spatially regularizing point clouds classification, with Matlab interface
Loic Landrieu 2017

Based on the article:
A structured regularization framework for spatially smoothing semantic labelings of 3D point clouds.
Landrieu, L., Raguet, H., Vallet, B., Mallet, C., & Weinmann, M. (2017).

This framework propose a set of methods for spatialy regularizing semantic labelings on a point cloud.
As mentioned in the paper above, 4 fidelity functions and 3 regularizers are proposed.

## DEPENDENCIES:

CUT PURSUIT : https://github.com/loicland/cut-pursuit

PFDR : (to come very soon)

ALPHA-EXPANSION : http://vision.ucla.edu/~brian/gcmex.html

LOOPY BELIEF PROPAGATION : http://www.cs.ubc.ca/~schmidtm/Software/UGM.html

All those dependencies are optional, but access to the corresponding regularization are dependant on which ones are installed. If you chose not to install some of those libraries, some code commenting might be necessary.

The data compressed files needs to be dezipped.
