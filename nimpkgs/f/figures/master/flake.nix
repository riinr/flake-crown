{
  description = ''Unicode symbols with Windows CMD fallbacks '';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-figures-master.flake = false;
  inputs.src-figures-master.ref   = "refs/heads/master";
  inputs.src-figures-master.owner = "lmariscal";
  inputs.src-figures-master.repo  = "figures";
  inputs.src-figures-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-figures-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-figures-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}