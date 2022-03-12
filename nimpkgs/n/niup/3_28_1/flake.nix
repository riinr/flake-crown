{
  description = ''IUP FFI bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-niup-3_28_1.flake = false;
  inputs.src-niup-3_28_1.owner = "dariolah";
  inputs.src-niup-3_28_1.ref   = "refs/tags/3.28.1";
  inputs.src-niup-3_28_1.repo  = "niup";
  inputs.src-niup-3_28_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-niup-3_28_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-niup-3_28_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}