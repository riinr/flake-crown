{
  description = ''Collection of helper utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hmisc-v0_8_4.flake = false;
  inputs.src-hmisc-v0_8_4.owner = "haxscramper";
  inputs.src-hmisc-v0_8_4.ref   = "v0_8_4";
  inputs.src-hmisc-v0_8_4.repo  = "hmisc";
  inputs.src-hmisc-v0_8_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-v0_8_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hmisc-v0_8_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}