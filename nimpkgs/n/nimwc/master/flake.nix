{
  description = ''A website management tool. Run the file and access your webpage.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimwc-master.flake = false;
  inputs.src-nimwc-master.owner = "ThomasTJdev";
  inputs.src-nimwc-master.ref   = "refs/heads/master";
  inputs.src-nimwc-master.repo  = "nim_websitecreator";
  inputs.src-nimwc-master.type  = "github";
  
  inputs."jester".dir   = "nimpkgs/j/jester";
  inputs."jester".owner = "riinr";
  inputs."jester".ref   = "flake-pinning";
  inputs."jester".repo  = "flake-nimble";
  inputs."jester".type  = "github";
  inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bcrypt".dir   = "nimpkgs/b/bcrypt";
  inputs."bcrypt".owner = "riinr";
  inputs."bcrypt".ref   = "flake-pinning";
  inputs."bcrypt".repo  = "flake-nimble";
  inputs."bcrypt".type  = "github";
  inputs."bcrypt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bcrypt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contra".dir   = "nimpkgs/c/contra";
  inputs."contra".owner = "riinr";
  inputs."contra".ref   = "flake-pinning";
  inputs."contra".repo  = "flake-nimble";
  inputs."contra".type  = "github";
  inputs."contra".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contra".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datetime2human".dir   = "nimpkgs/d/datetime2human";
  inputs."datetime2human".owner = "riinr";
  inputs."datetime2human".ref   = "flake-pinning";
  inputs."datetime2human".repo  = "flake-nimble";
  inputs."datetime2human".type  = "github";
  inputs."datetime2human".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datetime2human".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."firejail".dir   = "nimpkgs/f/firejail";
  inputs."firejail".owner = "riinr";
  inputs."firejail".ref   = "flake-pinning";
  inputs."firejail".repo  = "flake-nimble";
  inputs."firejail".type  = "github";
  inputs."firejail".inputs.nixpkgs.follows = "nixpkgs";
  inputs."firejail".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libravatar".dir   = "nimpkgs/l/libravatar";
  inputs."libravatar".owner = "riinr";
  inputs."libravatar".ref   = "flake-pinning";
  inputs."libravatar".repo  = "flake-nimble";
  inputs."libravatar".type  = "github";
  inputs."libravatar".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libravatar".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."otp".dir   = "nimpkgs/o/otp";
  inputs."otp".owner = "riinr";
  inputs."otp".ref   = "flake-pinning";
  inputs."otp".repo  = "flake-nimble";
  inputs."otp".type  = "github";
  inputs."otp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."otp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."recaptcha".dir   = "nimpkgs/r/recaptcha";
  inputs."recaptcha".owner = "riinr";
  inputs."recaptcha".ref   = "flake-pinning";
  inputs."recaptcha".repo  = "flake-nimble";
  inputs."recaptcha".type  = "github";
  inputs."recaptcha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."recaptcha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webp".dir   = "nimpkgs/w/webp";
  inputs."webp".owner = "riinr";
  inputs."webp".ref   = "flake-pinning";
  inputs."webp".repo  = "flake-nimble";
  inputs."webp".type  = "github";
  inputs."webp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."packedjson".dir   = "nimpkgs/p/packedjson";
  inputs."packedjson".owner = "riinr";
  inputs."packedjson".ref   = "flake-pinning";
  inputs."packedjson".repo  = "flake-nimble";
  inputs."packedjson".type  = "github";
  inputs."packedjson".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimwc-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimwc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}