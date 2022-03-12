{
  description = ''Indie assembler/linker for Android's Dalvik VM .dex & .apk files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dali-master.flake = false;
  inputs.src-dali-master.owner = "akavel";
  inputs.src-dali-master.ref   = "refs/heads/master";
  inputs.src-dali-master.repo  = "dali";
  inputs.src-dali-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dali-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dali-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}