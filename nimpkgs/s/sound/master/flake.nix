{
  description = ''Cross-platform sound mixer library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sound-master.flake = false;
  inputs.src-sound-master.owner = "yglukhov";
  inputs.src-sound-master.ref   = "refs/heads/master";
  inputs.src-sound-master.repo  = "sound";
  inputs.src-sound-master.type  = "github";
  
  inputs."jnim".dir   = "nimpkgs/j/jnim";
  inputs."jnim".owner = "riinr";
  inputs."jnim".ref   = "flake-pinning";
  inputs."jnim".repo  = "flake-nimble";
  inputs."jnim".type  = "github";
  inputs."jnim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/yglukhov/async_http_request".dir   = "nimpkgs/h/https://github.com/yglukhov/async_http_request";
  inputs."https://github.com/yglukhov/async_http_request".owner = "riinr";
  inputs."https://github.com/yglukhov/async_http_request".ref   = "flake-pinning";
  inputs."https://github.com/yglukhov/async_http_request".repo  = "flake-nimble";
  inputs."https://github.com/yglukhov/async_http_request".type  = "github";
  inputs."https://github.com/yglukhov/async_http_request".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/yglukhov/async_http_request".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsbind".dir   = "nimpkgs/j/jsbind";
  inputs."jsbind".owner = "riinr";
  inputs."jsbind".ref   = "flake-pinning";
  inputs."jsbind".repo  = "flake-nimble";
  inputs."jsbind".type  = "github";
  inputs."jsbind".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsbind".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/yglukhov/android".dir   = "nimpkgs/h/https://github.com/yglukhov/android";
  inputs."https://github.com/yglukhov/android".owner = "riinr";
  inputs."https://github.com/yglukhov/android".ref   = "flake-pinning";
  inputs."https://github.com/yglukhov/android".repo  = "flake-nimble";
  inputs."https://github.com/yglukhov/android".type  = "github";
  inputs."https://github.com/yglukhov/android".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/yglukhov/android".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sound-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sound-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}