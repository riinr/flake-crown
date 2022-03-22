{
  description = ''SHIORI Protocol Parser/Builder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-shiori-master.flake = false;
  inputs.src-shiori-master.ref   = "refs/heads/master";
  inputs.src-shiori-master.owner = "Narazaka";
  inputs.src-shiori-master.repo  = "shiori-nim";
  inputs.src-shiori-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-shiori-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-shiori-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}