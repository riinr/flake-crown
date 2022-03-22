{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-arturo-0_9_4.flake = false;
  inputs.src-arturo-0_9_4.owner = "arturo-lang";
  inputs.src-arturo-0_9_4.ref   = "0_9_4";
  inputs.src-arturo-0_9_4.repo  = "arturo";
  inputs.src-arturo-0_9_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-arturo-0_9_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-arturo-0_9_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}