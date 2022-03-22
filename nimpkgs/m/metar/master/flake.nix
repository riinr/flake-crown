{
  description = ''Read metadata from jpeg and tiff images.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-metar-master.flake = false;
  inputs.src-metar-master.ref   = "refs/heads/master";
  inputs.src-metar-master.owner = "flenniken";
  inputs.src-metar-master.repo  = "metar";
  inputs.src-metar-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-metar-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-metar-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}