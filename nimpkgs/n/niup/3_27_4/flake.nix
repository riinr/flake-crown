{
  description = ''IUP FFI bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-niup-3_27_4.flake = false;
  inputs.src-niup-3_27_4.owner = "dariolah";
  inputs.src-niup-3_27_4.ref   = "3_27_4";
  inputs.src-niup-3_27_4.repo  = "niup";
  inputs.src-niup-3_27_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-niup-3_27_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-niup-3_27_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}