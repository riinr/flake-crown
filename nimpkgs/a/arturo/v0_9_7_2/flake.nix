{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-arturo-v0_9_7_2.flake = false;
  inputs.src-arturo-v0_9_7_2.owner = "arturo-lang";
  inputs.src-arturo-v0_9_7_2.ref   = "refs/tags/v0.9.7.2";
  inputs.src-arturo-v0_9_7_2.repo  = "arturo";
  inputs.src-arturo-v0_9_7_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-arturo-v0_9_7_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-arturo-v0_9_7_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}