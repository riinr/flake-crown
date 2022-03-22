{
  description = ''A Nim wrapper for librtlsdr'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimrtlsdr-v0_1_4.flake = false;
  inputs.src-nimrtlsdr-v0_1_4.owner = "jpoirier";
  inputs.src-nimrtlsdr-v0_1_4.ref   = "v0_1_4";
  inputs.src-nimrtlsdr-v0_1_4.repo  = "nimrtlsdr";
  inputs.src-nimrtlsdr-v0_1_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimrtlsdr-v0_1_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimrtlsdr-v0_1_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}