{
  description = ''Basic http_request implementation for JS and native targets'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."async_http_request-master".dir   = "master";
  inputs."async_http_request-master".owner = "nim-nix-pkgs";
  inputs."async_http_request-master".ref   = "master";
  inputs."async_http_request-master".repo  = "async_http_request";
  inputs."async_http_request-master".type  = "github";
  inputs."async_http_request-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."async_http_request-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}