{
  description = ''Assembler for runtime code generation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-catnip-main.flake = false;
  inputs.src-catnip-main.ref   = "refs/heads/main";
  inputs.src-catnip-main.owner = "RSDuck";
  inputs.src-catnip-main.repo  = "catnip";
  inputs.src-catnip-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-catnip-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-catnip-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}