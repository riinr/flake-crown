{
  description = ''Indie assembler/linker for Android's Dalvik VM .dex & .apk files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dali-v0_2_3.flake = false;
  inputs.src-dali-v0_2_3.owner = "akavel";
  inputs.src-dali-v0_2_3.ref   = "refs/tags/v0.2.3";
  inputs.src-dali-v0_2_3.repo  = "dali";
  inputs.src-dali-v0_2_3.type  = "github";
  
  inputs."patty".dir   = "nimpkgs/p/patty";
  inputs."patty".owner = "riinr";
  inputs."patty".ref   = "flake-pinning";
  inputs."patty".repo  = "flake-nimble";
  inputs."patty".type  = "github";
  inputs."patty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dali-v0_2_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dali-v0_2_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}