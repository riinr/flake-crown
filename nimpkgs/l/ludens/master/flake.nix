{
  description = ''Little game library using opengl and sfml'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ludens-master.flake = false;
  inputs.src-ludens-master.owner = "rnentjes";
  inputs.src-ludens-master.ref   = "refs/heads/master";
  inputs.src-ludens-master.repo  = "nim-ludens";
  inputs.src-ludens-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ludens-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ludens-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}