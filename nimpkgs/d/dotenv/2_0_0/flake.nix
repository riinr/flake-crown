{
  description = ''dotenv implementation for Nim. Loads environment variables from `.env`'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dotenv-2_0_0.flake = false;
  inputs.src-dotenv-2_0_0.ref   = "refs/tags/2.0.0";
  inputs.src-dotenv-2_0_0.owner = "euantorano";
  inputs.src-dotenv-2_0_0.repo  = "dotenv.nim";
  inputs.src-dotenv-2_0_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dotenv-2_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dotenv-2_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}