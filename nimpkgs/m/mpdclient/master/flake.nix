{
  description = ''MPD client library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mpdclient-master.flake = false;
  inputs.src-mpdclient-master.owner = "SolitudeSF";
  inputs.src-mpdclient-master.ref   = "master";
  inputs.src-mpdclient-master.repo  = "mpdclient";
  inputs.src-mpdclient-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mpdclient-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mpdclient-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}