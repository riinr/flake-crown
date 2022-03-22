{
  description = ''`Section` macro with BDD aliases for testing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sections-master.flake = false;
  inputs.src-sections-master.ref   = "refs/heads/master";
  inputs.src-sections-master.owner = "c0ffeeartc";
  inputs.src-sections-master.repo  = "nim-sections";
  inputs.src-sections-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sections-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sections-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}