{
  description = ''A library to automatically encrypt all string constants in your programs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-strenc-master.flake = false;
  inputs.src-strenc-master.owner = "Yardanico";
  inputs.src-strenc-master.ref   = "refs/heads/master";
  inputs.src-strenc-master.repo  = "nim-strenc";
  inputs.src-strenc-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-strenc-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-strenc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}