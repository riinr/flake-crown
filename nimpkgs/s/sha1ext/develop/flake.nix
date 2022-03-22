{
  description = ''std / sha1 extension'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sha1ext-develop.flake = false;
  inputs.src-sha1ext-develop.ref   = "refs/heads/develop";
  inputs.src-sha1ext-develop.owner = "CORDEA";
  inputs.src-sha1ext-develop.repo  = "sha1ext";
  inputs.src-sha1ext-develop.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sha1ext-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sha1ext-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}