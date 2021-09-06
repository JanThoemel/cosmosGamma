%% Simulate communication for satellites in the formation
% ______________________________________________________________________________
%
% Class Communication:
%
% Detailed explanation goes here.
% ______________________________________________________________________________

classdef Communication < handle

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Properties %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  properties (GetAccess = public, SetAccess = public)

    % Set in constructor.
    AutoResponse % Enable automatic communication [true/false].
    NumSats % Number of satellites in the formation.

    % Set in satellite initialization (Satellite.initialize).
    CommChannel % Communication channel to ground stations.
    SatID % Unique identification number in the formation.
    SatName % Name used in communications with ground stations.

  end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Constructor Method %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  methods % Constructor.

    function this = Communication(autoResponse, numSats)

      this.AutoResponse = autoResponse;
      this.NumSats = numSats;

    end

  end % Constructor.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Public Methods %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  methods (Access = public)

    groundSend(this, msg)
    broadcastSend(this, msg)
    msg = broadcastReceive(this)

  end % Public methods.

end % Class Communication.
