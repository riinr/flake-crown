{
  description = ''TwineMedia API client library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tm_client-main.flake = false;
  inputs.src-tm_client-main.owner = "termermc";
  inputs.src-tm_client-main.ref   = "refs/heads/main";
  inputs.src-tm_client-main.repo  = "nim-tm-client";
  inputs.src-tm_client-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tm_client-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tm_client-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}