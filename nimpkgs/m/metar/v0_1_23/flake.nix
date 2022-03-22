{
  description = ''Read metadata from jpeg and tiff images.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-metar-v0_1_23.flake = false;
  inputs.src-metar-v0_1_23.ref   = "refs/tags/v0.1.23";
  inputs.src-metar-v0_1_23.owner = "flenniken";
  inputs.src-metar-v0_1_23.repo  = "metar";
  inputs.src-metar-v0_1_23.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-metar-v0_1_23"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-metar-v0_1_23";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}