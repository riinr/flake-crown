{
  description = ''Bindings to the Keystone Assembler.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-keystone-master.flake = false;
  inputs.src-keystone-master.owner = "6A";
  inputs.src-keystone-master.ref   = "refs/heads/master";
  inputs.src-keystone-master.repo  = "Keystone.nim";
  inputs.src-keystone-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-keystone-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-keystone-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}