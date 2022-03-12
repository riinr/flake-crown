{
  description = ''Nim bindings for the WEBRTC VAD(voice actitvity Detection)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-webrtcvad-master.flake = false;
  inputs.src-webrtcvad-master.owner = "eagledot";
  inputs.src-webrtcvad-master.ref   = "refs/heads/master";
  inputs.src-webrtcvad-master.repo  = "nim-webrtcvad";
  inputs.src-webrtcvad-master.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-webrtcvad-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-webrtcvad-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}