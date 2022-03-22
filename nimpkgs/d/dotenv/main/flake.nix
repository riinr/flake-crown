{
  description = ''dotenv implementation for Nim. Loads environment variables from `.env`'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dotenv-main.flake = false;
  inputs.src-dotenv-main.owner = "euantorano";
  inputs.src-dotenv-main.ref   = "main";
  inputs.src-dotenv-main.repo  = "dotenv.nim";
  inputs.src-dotenv-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dotenv-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dotenv-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}