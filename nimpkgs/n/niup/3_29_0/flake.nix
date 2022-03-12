{
  description = ''IUP FFI bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-niup-3_29_0.flake = false;
  inputs.src-niup-3_29_0.owner = "dariolah";
  inputs.src-niup-3_29_0.ref   = "refs/tags/3.29.0";
  inputs.src-niup-3_29_0.repo  = "niup";
  inputs.src-niup-3_29_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-niup-3_29_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-niup-3_29_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}