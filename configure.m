%compile the MEX files for the methods required
%---Loopy belief propagation-----------------------------------------------
mex -Imex -outdir UGM/compiled UGM/mex/UGM_makeEdgeVEC.c
mex -Imex -outdir UGM/compiled UGM/mex/UGM_Infer_LBPC.c
mex -Imex -outdir UGM/compiled UGM/mex/UGM_Decode_LBPC.c
%---Alpha expansion--------------------------------------------------------
mex -O -g  -largeArrayDims -outdir GCMex GCMex/GCMex.cpp...
    GCMex/graph.cpp GCMex/GCoptimization.cpp GCMex/LinkedBlockList.cpp...
    GCMex/maxflow.cpp
%---PFDR-------------------------------------------------------------------
mex CXXFLAGS="\$CXXFLAGS -DMEX -fopenmp"...
LDFLAGS="\$LDFLAGS -fopenmp" ...
PFDR_simplex/mex/api/PFDR_graph_loss_d1_simplex_mex.cpp ...
PFDR_simplex/mex/src/PFDR_graph_loss_d1_simplex.cpp...
PFDR_simplex/mex/src/proj_simplex_metric.cpp ...
-output PFDR_simplex/mex/bin/PFDR_graph_loss_d1_simplex_mex
%---Cut pursuit------------------------------------------------------------
mex CXXFLAGS="\$CXXFLAGS -pthread -Wall -std=c++11 -fopenmp -O3"...
    LDFLAGS="\$LDFLAGS -fopenmp" CutPursuit/api/cutPursuitMex.cpp ...
    -output CutPursuit/bin/cutPursuitMex
